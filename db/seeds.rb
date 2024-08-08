# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'admin@gmail.com', password: 'Adm$123', password_confirmation: 'Adm$123')
User.create!(email: 'hussam@gmail.com', password: 'Hos$123', password_confirmation: 'Hos$123')
User.create!(email: 'abdulla@gmail.com', password: 'Abd@e123', password_confirmation: 'Abd@e123')

5.times do
  Category.create!([{
    name: Faker::Educator.degree,
    description: Faker::Lorem.paragraph,
  }])
end

15.times do
  Course.create!([{
    name: Faker::Educator.course_name,
    short_description: Faker::Lorem.paragraph,
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    user_id: Faker::Number.between(from: 1, to: 3),
    category_id: Faker::Number.between(from: 1, to: 3),
    duration: Faker::Number.between(from: 0, to: 600),
    price: Faker::Number.between(from: 0, to: 200),
    published: true,
    approved: true,
    language: "English"
  }])
end

20.times do
  Lesson.create!([{
    name: Faker::Address.unique.city,
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    video_url: "https://www.youtube.com/watch?v=ojXjR33bPOY",
    course_id: Faker::Number.between(from: 1, to: 9),
    row_order: Faker::Number.between(from: -50000, to: 50000),
  }])
end

1.times do
  Subscription.create!([{
    rating: Faker::Number.between(from: 1, to: 5),
    comment: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    course_id: Faker::Number.between(from: 1, to: 20),
    user_id: Faker::Number.between(from: 1, to: 3),
  }])
end
