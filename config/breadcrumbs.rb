crumb :root do
  link "トップ", root_path
end

crumb :user do
  link "マイページ", user_path
end

crumb :product do
  link "グミ詳細", gummy_path
end

crumb :product_new do
  link "グミ投稿", new_gummy_path
end

crumb :product_edit do
  link "グミ編集", edit_gummy_path
end

crumb :product_news do
  link "グミニュース", news_gummies_path
end

crumb :product_other do
  link "その他", news_gummies_path
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
