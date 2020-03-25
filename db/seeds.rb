# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying all users"
User.destroy_all

puts "destroying all art pieces"
Art.destroy_all

# puts "destroying all bookings"
# Booking.destroy_all

puts "Creating users & arts"

user1 = User.create!(email: "harry@gmail.com", first_name: "Harry", last_name: "Black", password: "password", short_description: "Fanatic of Salvador Dali", avatar: "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80" )
art1 = Art.create!(name: "Pink in the sky", description: "Modern work from Pawel Cerwinsky. Bring colour into your living room", location: "Barcelona, Spain", price_per_week: 45, user: user1, artist: "Pawel Cerwinsky", photo: "https://images.unsplash.com/photo-1578598491752-1df4a1c57439?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
art2 = Art.create!(name: "Purple Haze", description: "Another great piece from Pawel Cerwinsky. Purple burst of colour to bring any space to life.", location: "Barcelona, Spain", price_per_week: 65, user: user1, artist: "Pawel Cerwinsky", photo: "https://images.unsplash.com/photo-1576180525792-82cdc0e2b29e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")

user2 = User.create!(email: "betty@gmail.com", first_name: "Betty", last_name: "Ford", password: "password", short_description: "Flowers bring all the joy to your life", avatar: "https://images.unsplash.com/photo-1542103749-8ef59b94f47e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
art3 = Art.create!(name: "Ocean depths", description: "Infinite blues rising to the surface. Dream away at this masterpiece.", location: "Lisbon, Portugal", price_per_week: 40, user: user2, artist: "Danny Ferlonstad", photo: "https://images.unsplash.com/photo-1515405295579-ba7b45403062?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80")
art4 = Art.create!(name: "Texture in blue", description: "The artist tried to capture the texture of water smashing into the shore. Experimental piece", location: "Lisbon, Portugal", price_per_week: 85, user: user2, artist: "Danny Ferlonstad", photo: "https://images.unsplash.com/photo-1420442442888-15c96323ec3c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80")

puts "Finished!"
# user3 = User.create!(email: "hot@gmail.com", first_name: "Mary", last_name: "Kardashian", language: "spanish", password: "password",  birth_date: "04/11/1993", short_description: "Pretty,pretty,pretty", remote_avatar_url: "http://www.prettydesigns.com/wp-content/uploads/2013/11/Long-Brunette-Ombre-Straight-Hairstyle-for-Schoolgirls-200x200.jpg")
# friend3 = Friend.create!(large_description: "Nothing to complain about", location: "Barcelona, Poble Nou", price_per_hour: 105, user: user3)
