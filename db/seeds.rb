# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


categories=[
  {level1:"Life",level1_children:[
                                      {level2:"ガジェット",level2_children:["PC周り","スマホ"]},
                                      {level2:"旅行",level2_children:["国内","国外"]},
                                      {level2:"ファッション",level2_children:["大人","子供"]}
                                      ]
  },
  {level1:"Programming",level1_children:[
                                      {level2:"Ruby",level2_children:["rails","gem","エラー"]},
                                      {level2:"Javascript",level2_children:["jQuery","JSON","エラー"]}
                                      ]
  },
  {level1:"English",level1_children:[
                                      {level2:"勉強法",level2_children:["Speaking","Listening"]},
                                      {level2:"大学",level2_children:["進路","勉強法"]}
                                      ]
  },
  {level1:"グルメ",level1_children:[
                                      {level2:"隠れ家",level2_children:["新橋","渋谷","恵比寿"]},
                                      {level2:"コスパ",level2_children:["和風","洋風","中華"]},
                                      {level2:"お高い",level2_children:["和風","洋風","中華"]}
                                      ]
  }
]
categories.each.with_index(1) do |category,i|
  level1_var="@category#{i}"
  level1_val= Category.create(name:"#{category[:level1]}")
  eval("#{level1_var} = level1_val")
    category[:level1_children].each.with_index(1) do |level1_child,j|
      level2_var="#{level1_var}_#{j}"
      level2_val= eval("#{level1_var}.children.create(name:level1_child[:level2])")
      eval("#{level2_var} = level2_val")
        level1_child[:level2_children].each do |level2_children_val|
          eval("#{level2_var}.children.create(name:level2_children_val)")
        end
    end
end

25.times do |i|
  article = Article.new
  article.title = Faker::Lorem.sentence(word_count: 3, random_words_to_add: 7)
  article.body = Faker::Lorem.paragraph_by_chars(number: 1500)
  article.user = User.first
  article.thumbnail.attach(io: open("https://picsum.photos/1920/1080"), filename: "#{i}_thumbnail.jpg")
  article.banner.attach(io: open("https://picsum.photos/1920/1080"), filename: "#{i}_banner.jpg")
  article.views = Faker::Number.between(from: 1, to: 5000)
  article.category = Category.order("RAND()").first
  article.save
end

User.create!(
  email: "abc@example.com",
  password: 'password',
  password_confirmation: "password",
  admin: true
)