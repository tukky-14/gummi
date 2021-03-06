class Gummy < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :name, :maker, :content, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :maker

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

    def previous
      Gummy.order('created_at desc, id desc').where('created_at <= ? and id < ?', created_at, id).first
    end
  
    def next
      Gummy.order('created_at desc, id desc').where('created_at >= ? and id > ?', created_at, id).reverse.first
    end

  def self.search(search)
    return Gummy.all unless search

    Gummy.where('name LIKE(?)', "%#{search}%")
  end
end
