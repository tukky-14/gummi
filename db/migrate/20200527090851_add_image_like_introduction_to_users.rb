class AddImageLikeIntroductionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :image, :string
    add_column :users, :like, :string
    add_column :users, :introduction, :text
  end
end
