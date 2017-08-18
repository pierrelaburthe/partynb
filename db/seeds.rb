puts 'destroying classes'
classes = [User, Party, Booking]
classes.each do |c|
  c.destroy_all
end

puts 'creating new classes'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user1 = User.new(email: "laburthe@gmail.com", password: "laburtheee", name: "Pierre Laburte", age: 23, remote_photo_url: "https://static.pexels.com/photos/114999/pexels-photo-114999.jpeg")
user1.save!
user2 = User.new(email: "donati@gmail.com", password: "donatiii", name: "Pierre Donati", age: 23, remote_photo_url: "https://static.pexels.com/photos/457446/pexels-photo-457446.jpeg")
user2.save!
user3 = User.new(email: "seror@gmail.com", password: "serorrrr", name: "Elliot Seror", age: 24, remote_photo_url: "https://static.pexels.com/photos/442559/pexels-photo-442559.jpeg")
user3.save!
user4 = User.new(email: "yannickblakime@gmail.com", password: "blakimyyyy", name: "Yanick Blackime ", age: 25, remote_photo_url: "https://static.pexels.com/photos/175687/pexels-photo-175687.jpeg")
user4.save!
user5 = User.new(email: "partynbmailtest@gmail.com", password: "partynbppey", name: "partynb", age: 25, remote_photo_url: "https://static.pexels.com/photos/123318/pexels-photo-123318.jpeg")
user5.save!

party1 = Party.new(title: "Pool party de ouf", capacity: 18, music_type: "justin bieber", price: 30, user: user1, address: "27 rue de Ménilmontant", remote_photo_url: "https://static.pexels.com/photos/7283/garden.jpg")
party1.save!
party2 = Party.new(title: "Barbeuc' dans le jardin", capacity: 5, music_type: "musique francaise", price: 8, user: user2, address: "32 Avenue de la République", remote_photo_url: "https://static.pexels.com/photos/7283/garden.jpg")
party2.save!
party3 = Party.new(title: "Murge chez Momo", capacity: 30, music_type: "grosse electro", price: 3, user: user3, address: "57 Boulevard Magenta", remote_photo_url: "https://static.pexels.com/photos/7283/garden.jpg")
party3.save!
party4 = Party.new(title: "Soirée d'anniversaire Julien 4 ans", capacity: 4, music_type: "henry dès", price: 9, user: user4, address: "55 rue de varenne", remote_photo_url: "https://static.pexels.com/photos/7283/garden.jpg")
party4.save!
party5 = Party.new(title: "Soirée Wagon", capacity: 70, music_type: "deep house", price: 3, user: user1, address: "44 rue coquillere ", remote_photo_url: "https://static.pexels.com/photos/7283/garden.jpg")
party5.save!
party6 = Party.new(title: "Soirée déguisée", capacity: 9, music_type: "minimal", price: 3, user: user2, address: "16 villa gaudelet", remote_photo_url: "https://static.pexels.com/photos/7283/garden.jpg")
party6.save!
party7 = Party.new(title: "Baloon night", capacity: 12, music_type: "minimal", price: 3, user: user4, address: "4 place victor hugo", remote_photo_url: "https://static.pexels.com/photos/7283/garden.jpg")
party7.save!
party8 = Party.new(title: "Theme bleu ", capacity: 8, music_type: "minimal", price: 3, user: user2, address: "30 boulevard raspail", remote_photo_url: "https://static.pexels.com/photos/7283/garden.jpg")
party8.save!
party9 = Party.new(title: "Degustation ", capacity: 3, music_type: "minimal", price: 3, user: user2, address: "12 rue oberkampf", remote_photo_url: "https://static.pexels.com/photos/7283/garden.jpg")
party9.save!


booking1 = Booking.new(user: user1, party: party2, participant_count: 4, status: "confirmed", message: "On est cools")
booking1.save!
booking2 = Booking.new(user: user2, party: party1, participant_count: 3, status: "pending", message: "On ramène à boire")
booking2.save!
booking3 = Booking.new(user: user3, party: party3, participant_count: 31, status: "pending", message: "3 bouteillles de hard")
booking3.save!
