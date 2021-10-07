# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'ismailaidar@gmail.com', 
  password: 'password', 
  password_confirmation: 'password', 
  admin: true)


  40.times do |i|
    post = Post.new
    post.title = Faker::Lorem.sentence(word_count: 3, random_words_to_add:7)
    post.body = Faker::Lorem.paragraph_by_chars(number: 1500)
    post.user = User.first
    post.banner.attach(io: open("https://picsum.photos/1272/400"), filename: "#{i}_image.jpg")
    post.image.attach(io: open("https://picsum.photos/262/389"), filename: "#{i}_banner.jpg")
    post.views = i*2
    post.save
  end