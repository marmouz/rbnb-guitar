# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts"destroy"
Booking.destroy_all
Guitar.destroy_all
User.destroy_all
puts "create 2 users"

user1 = User.new(email: "nounours@gmail.com", password: "nounours", first_name: "nicolas", last_name:"schmoutz", address:"11 rue du coteau", city: "Chaville", description: "Salut, c'est moi Nounours. Vous me reconnaissez ?! Ah ah, sacré Nounours ! Bien, un peu de sérieux, voulez-vous ? Ma passion dans la vie ? Le rock n'roll et les alcools forts ! Allez, Hasta la Vista babies !")
user1.save!

user2 = User.new(email: "faust@gmail.com", password: "lafaust", first_name: "faustine", last_name:"faustinier", address:"37 avenue Germaine", city: "La Madeleine", description: "Salut, c'est la Faust ! Bon, si c'est pour commencer à des aneries, c'est pas la peine ! Parceque des sexistes et des phallocrates comme vous, ça commence à bien faire ! A ce sujet, saviez vous que Faust était une oeuvre du poète allemand Friedriech Van Goethe ? Allez tchao les nullos !")
user2.save!

puts "create guitar"

guitar1 = Guitar.new(model: "Stratocaster", brand: "Fender", genre: "electric", price_per_day: 35, level: "middle")
guitar1.user = user1
guitar1.save!

guitar2 = Guitar.new(model:"Jaguar" , brand: "Fender", genre: "electric", price_per_day: 35, level: "middle")
guitar2.user = user1
guitar2.save!

guitar3 = Guitar.new(model: "SG", brand: "Gibson", genre: "electric", price_per_day: 40, level: "middle")
guitar3.user = user1
guitar3.save!

guitar4 = Guitar.new(model: "Les Paul", brand: "Gibson", genre: "electric", price_per_day: 40, level: "middle")
guitar4.user = user1
guitar4.save!

guitar5 = Guitar.new(model: "Flying V", brand: "Gibson", genre: "electric", price_per_day: 40, level: "middle")
guitar5.user = user1
guitar5.save!


guitar6 = Guitar.new(model: "Precision Bass", brand: "Fender", genre: "bass", price_per_day: 45, level: "beginner")
guitar6.user = user2
guitar6.save!


guitar7 = Guitar.new(model: "Jazz Bass", brand: "Fender", genre: "bass", price_per_day: 35, level: "beginner")
guitar7.user = user2
guitar7.save!

guitar8 = Guitar.new(model: "360/12 FG", brand: "Rickenbacker", genre: "12-strings", price_per_day: 70, level: "expert")
guitar8.user = user2
guitar8.save!

guitar9 = Guitar.new(model: "FX370C", brand: "Yamaha", genre: "acoustic" , price_per_day: 70, level: "expert")
guitar9.user = user2
guitar9.save!

guitar10 = Guitar.new(model: "TC132SC", brand: "Takamine", genre: "classic", price_per_day: 70, level: "expert")
guitar10.user = user2
guitar10.save!


booking1 = Booking.new(end_date: Date.today + 5, start_date:Date.today)
booking1.user = user1
booking1.guitar = guitar1
booking1.save!

booking2 = Booking.new(end_date: Date.today + 2, start_date: Date.today)
booking2.user = user2
booking2.guitar = guitar6
booking2.save!


puts'end'
