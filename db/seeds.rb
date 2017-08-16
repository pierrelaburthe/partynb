# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.new(email: "laburthe@gmail.com", password: "laburtheee", name: "Pierre Laburte", age: 23)
user1.save!
user2 = User.new(email: "donati@gmail.com", password: "donatiii", name: "Pierre Donati", age: 23)
user2.save!
user3 = User.new(email: "seror@gmail.com", password: "serorrrr", name: "Elliot Seror", age: 24)
user3.save!
user4 = User.new(email: "blakimy@gmail.com", password: "blakimyyyy", name: "Yanick Blackimy ", age: 25)
user4.save!


party1 = Party.new(title: "Pool party de ouf", capacity: 18, music_type: "justin bieber", price: 30, user: user1, address: "27 rue de Ménilmontant" )
party1.save!
party2 = Party.new(title: "Barbeuc' dans le jardin", capacity: 5, music_type: "musique francaise", price: 8, user: user2, address: "32 Avenue de la République" )
party2.save!
party3 = Party.new(title: "Murge chez Momo", capacity: 30, music_type: "grosse electro", price: 3, user: user3, address: "57 Boulevard Magenta" )
party3.save!



booking1 = Booking.new(user: user1, party: party2, participant_count: 4, status: "confirmed" )
booking1.save!
booking2 = Booking.new(user: user2, party: party1, participant_count: 3, status: "pending" )
booking2.save!
booking3 = Booking.new(user: user3, party: party3, participant_count: 31, status: "pending" )
booking3.save!
