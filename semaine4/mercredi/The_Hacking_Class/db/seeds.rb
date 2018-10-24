# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#require 'faker'

cours = Course.create(title: "Mathematiques")

10.times do
  eleve = Eleve.create!(name: Faker::FunnyName.name, course_id: Faker::Number.between(1, 1))
end

#10.times do
#  user = User.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, email: Faker::Internet.email)
#end