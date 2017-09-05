require "faker"
require "kramdown"
10.times do
  new_article = Article.create(title: Faker::Lorem.words, content: Faker::Lorem.words(3))
  new_article.save
end

new_article = Kramdown::Article.create(title: "Ce title" , content: "Markdown **formatting** in my __code")
new_article.save
