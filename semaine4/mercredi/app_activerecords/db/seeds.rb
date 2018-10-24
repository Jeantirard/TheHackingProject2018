# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


#10.times do
#  user = User.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, email: Faker::Internet.email)
#end

#5.times do
#  categorie = Categorie.create!(name: Faker::Lorem.sentence(1))
#end

10.times do
 article = Article.create!(categorie_id:Faker::Number.between(1, 5), title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, user_id: Faker::Number.between(1, 10))
end

