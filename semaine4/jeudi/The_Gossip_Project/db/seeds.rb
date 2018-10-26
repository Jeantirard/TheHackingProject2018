# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


10.times do
  city = City.create!(name: Faker::Address.city, postal_code: 00000)
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: Faker::Number.between(City.first.id, City.last.id), email: Faker::Internet.email, description: Faker::SwordArtOnline.real_name)
  tag = Tag.create!(title: Faker::Lorem.word)
end


20.times do
  gossip = Gossip.create!(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, user_id: Faker::Number.between(User.first.id, User.last.id))
end

