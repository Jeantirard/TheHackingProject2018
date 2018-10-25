require 'faker'

5.times do
  city = City.create!(city_name: Faker::Address.city )
end

10.times do
  dog = Dog.create!(name: Faker::FunnyName.name, city_id: Faker::Number.between(City.first.id, City.last.id))
end

6.times do
  dogsitter = Dogsitter.create!(name: Faker::Name.name, city_id: Faker::Number.between(City.first.id, City.last.id))
end


5.times do |i|
  stroll = Stroll.create!(date: Faker::Time.between(DateTime.now + 1, DateTime.now + 8), dogsitter_id: Faker::Number.between(Dogsitter.first.id, Dogsitter.last.id), dog_id: Faker::Number.between(Dog.first.id, Dog.last.id))
end
