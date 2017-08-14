# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.new(mail: "laburthe@gmail.com", password: "laburthe", name: "Pierre Laburte", age: 23)
user1.save!
user2 = User.new(mail: "donati@gmail.com", password: "donati", name: "Pierre Donati", age: 23)
user2.save!
user3 = User.new(mail: "seror@gmail.com", password: "seror", name: "Elliot Seror", age: 24)
user3.save!
user4 = User.new(mail: "blakimy@gmail.com", password: "blakimy", name: "Yanick Blackimy ", age: 25)
user4.save!


party1 = Party.new(title: "Pool party de ouf", capacity: 18, music_type: "justin bieber", price: 30, user_id: 1 )
party1.save!
party2 = Party.new(title: "Barbeuc' dans le jardin", capacity: 5, music_type: "musique francaise", price: 8, user_id: 2 )
party2.save!
party3 = Party.new(title: "Murge chez Momo", capacity: 30, music_type: "grosse electro", price: 3, user_id: 3 )
party3.save!


booking1 = Booking.new(user_id: 1, party_id: 2, participant_count: 4, status: "confirmed" )
booking1.save!
booking2 = Booking.new(user_id: 3, party_id: 1, participant_count: 3, status: "pending" )
booking2.save!
booking3 = Booking.new(user_id: 4, party_id: 3, participant_count: 31, status: "pending" )
booking3.save!
