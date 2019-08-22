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

guitar1 = Guitar.new(model: "Stratocaster", brand: "Fender", genre: "electric", price_per_day: 35, level: "middle", description: "La Stratocaster est le second modèle de guitare électrique produit par la marque américaine Fender. Elle succède à la Telecaster, sans la remplacer, celle-ci restant au catalogue jusqu'à nos jours.")
guitar1.user = user1
url1 = "https://sc1.musik-produktiv.com/pic-010107419xxl/fender-custom-shop-masterbuilt-59-stratocaster.jpg"
guitar1.remote_photo_url = url1
guitar1.save!

guitar2 = Guitar.new(model:"Jaguar" , brand: "Fender", genre: "electric", price_per_day: 35, level: "middle", description: "La Fender Jaguar est un modèle de guitare électrique créé par la marque Fender en 1962. ")
guitar2.user = user1
url2 = "https://www.pmtonline.co.uk/media/catalog/product/cache/1/image/1919x/9df78eab33525d08d6e5fb8d27136e95/5/9/59133-176489-player-jaguar-pau-ferro-fingerboard-tidepool-1.jpg"
guitar2.remote_photo_url = url2
guitar2.save!

guitar3 = Guitar.new(model: "SG", brand: "Gibson", genre: "electric", price_per_day: 40, level: "middle", description: "La Gibson SG est un modèle de guitare électrique de type « corps plein » (solid body), c'est-à-dire ne possédant pas de caisse de résonance, fabriqué par la firme américaine Gibson Guitar Corporation. Les initiales SG signifient Solid Guitar.")
guitar3.user = user1
url3 = "https://www.stars-music.fr/medias/gibson/sg-standard-2019-hd-149142.jpg"
guitar3.remote_photo_url = url3
guitar3.save!

guitar4 = Guitar.new(model: "Les Paul", brand: "Gibson", genre: "electric", price_per_day: 40, level: "middle", description: "Les Gibson Les Paul sont des guitares électriques de type « corps plein » (solid body) fabriquées par la firme américaine Gibson Guitar Corporation.")
guitar4.user = user1
url4 = "https://sc1.musik-produktiv.com/pic-010109184xxl/gibson-les-paul-classic-ebony-10109184.jpg"
guitar4.remote_photo_url = url4
guitar4.save!

guitar5 = Guitar.new(model: "Flying V", brand: "Gibson", genre: "electric", price_per_day: 40, level: "middle", description: "Une Gibson Flying V est une guitare électrique de type « corps plein » (solid body), c'est-à-dire ne possédant pas de caisse de résonance, qui a été produite pour la première fois en 1958 par la firme Gibson. Toutefois les premiers prototypes datent de 1957.")
guitar5.user = user1
url5 = "https://c1.zzounds.com/media/productmedia/fit,2018by3200/quality,85/1_Full_Straight_Front_NA-581918cde34702ecd1410cbbb50e3cd1.jpg"
guitar5.remote_photo_url = url5
guitar5.save!


guitar6 = Guitar.new(model: "Precision Bass", brand: "Fender", genre: "bass", price_per_day: 45, level: "beginner", description: "La Fender Precision Bass ou plus familièrement P-Bass fut la première guitare basse électrique construite en 1951 par Leo Fender. Elle est depuis toujours restée une référence dans le monde de la musique amplifiée.")
guitar6.user = user2
url6 = "https://www.pmtonline.co.uk/media/catalog/product/cache/1/image/2400x/9df78eab33525d08d6e5fb8d27136e95/4/8/48283-0193610709-fender-american-professional-precision-bass-rw-candy-apple-red.jpg"
guitar6.remote_photo_url = url6
guitar6.save!


guitar7 = Guitar.new(model: "Jazz Bass", brand: "Fender", genre: "bass", price_per_day: 35, level: "beginner", description: "La Fender Jazz Bass est un modèle de basse électrique créé par la marque Fender en 1960. Lancée sous le nom de 'Deluxe Model', elle sera renommée 'Jazz Bass' après que son manche, plus étroit et arrondi que celui de la Precision Bass, a été redessiné pour les musiciens de jazz.")
guitar7.user = user2
url7 = "https://sc1.musik-produktiv.com/pic-010105833xxl/fender-player-jazzbass-mn-3ts.jpg"
guitar7.remote_photo_url = url7
guitar7.save!

guitar8 = Guitar.new(model: "360/12 FG", brand: "Rickenbacker", genre: "12-strings", price_per_day: 70, level: "expert", description: "The Rickenbacker 360/12 is a semi-hollow body with set neck construction electric guitar made by the Rickenbacker company; it was among the first electric twelve-string guitars.")
guitar8.user = user2
url8 = "https://www.pmtonline.co.uk/media/catalog/product/cache/1/image/2037x/9df78eab33525d08d6e5fb8d27136e95/4/5/45913-26932-rickenbacker-360-12-string-fireglo.jpg"
guitar8.remote_photo_url = url8
guitar8.save!

guitar9 = Guitar.new(model: "FX370C", brand: "Yamaha", genre: "acoustic" , price_per_day: 70, level: "expert", description: "La FX370C est dotée d'une table en épicéa ainsi que d'un dos et d'éclisses en nato. Son design compact avec cutaway lui confère un excellent confort de jeu avec un accès facilité aux aigus. Le capteur piezo monté sous le chevalet lui donne un punch tout particulier.")
guitar9.user = user2
url9 = "https://images-na.ssl-images-amazon.com/images/I/71XaMV-v8KL._SL1500_.jpg"
guitar9.remote_photo_url = url9
guitar9.save!

guitar10 = Guitar.new(model: "TC132SC", brand: "Takamine", genre: "classic", price_per_day: 70, level: "expert", description: " TC132SC, Guitare classique / nylon électro-acoustique de la marque Takamine appartenant à la série Classics & Hirade.")
guitar10.user = user2
url10 = "https://c1.zzounds.com/media/productmedia/fit,2018by3200/quality,85/1_Full_Straight_Front_NA-b72e207d5fdcac4e0fe58fcd9a060e73.jpg"
guitar10.remote_photo_url = url10
guitar10.save!


booking1 = Booking.new(end_date: Date.today + 5, start_date:Date.today)
booking1.user = user1
booking1.guitar = guitar1
booking1.save!

booking3 = Booking.new(end_date: Date.today + 9, start_date:Date.today + 7)
booking3.user = user1
booking3.guitar = guitar1
booking3.save!


booking2 = Booking.new(end_date: Date.today + 2, start_date: Date.today)
booking2.user = user2
booking2.guitar = guitar6
booking2.save!


puts'end'
