# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  email: "abc@abc.com",
  password: 'testtest',
  password_confirmation: "testtest",
  admin: true
)

24.times do |i|
  article = Article.new
  article.title = Faker::Lorem.sentence(word_count: 3, random_words_to_add: 7)
  article.body = Faker::Lorem.paragraph_by_chars(number: 1500)
  article.user = User.first
  article.thumbnail.attach(io: URI.open("https://picsum.photos/1920/1080"), filename: "#{i}_thumbnail.jpg")
  article.banner.attach(io: URI.open("https://picsum.photos/1920/1080"), filename: "#{i}_banner.jpg")
  article.views = Faker::Number.between(from: 1, to: 5000)
  article.tag_list = Faker::Lorem.words(number: 4)
  article.save
end
