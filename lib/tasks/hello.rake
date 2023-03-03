namespace :hello do
  desc "testing purpose"

  task :execute do
    article = Article.all
    puts "#{article.size}"
  end
end