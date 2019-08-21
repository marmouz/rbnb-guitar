# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts"destroy"
Guitar.destroy_all
User.destroy_all
puts "create 2 users"

user1 = User.new(email: "nounours@gmail.com", password: "nounours", first_name: "nicolas", last_name:"schmoutz", address:"37 avenue Germaine, 59110 La Madeleine")
user1.save!
user2 = User.new(email: "faust@gmail.com", password: "lafaust", first_name: "faustine", last_name:"faustinier", address:"11 rue du coteau, 92370 Chaville")
user2.save!

puts "create guitar"

5.times do

  guitar = Guitar.new(model: Faker::Music::RockBand.name, brand: Faker::Music::Phish.song, genre: Faker::Music.genre, price_per_day: rand(1..100), level: Guitar::LEVEL.sample)
  guitar.user = user1
  guitar.save!
end

5.times do
  guitar = Guitar.new(model: Faker::Music::RockBand.name, brand: Faker::Music::Phish.song, genre: Faker::Music.genre, price_per_day: rand(1..100), level: Guitar::LEVEL.sample)

  guitar.user = user2
  guitar.save!
end

puts'end'
