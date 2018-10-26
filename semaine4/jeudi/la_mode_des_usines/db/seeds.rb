# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  asse = Assembly.create!(name: Faker::Zelda.game)
  part = Part.create!(part_number: Faker::Zelda.item)
end

10.times do
  asse1 = Assembly.find(rand(1..10))
  part1 = Part.find(rand(1..10))
  part1.assemblies << asse1
end