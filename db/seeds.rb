# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

la_v = Restaurant.create!(name: "LA V", address: "123 central", phone: "123", hours: "24")
buya = Restaurant.create!(name: "Buya", address: "456 central", phone: "654", hours: "24")
iberian_rooster = Restaurant.create!(name: "Iberian Rooster", address: "789 central", phone: "987", hours: "24")
the_lure = Restaurant.create!(name: "The Lure", address: "321 central", phone: "321", hours: "24")

picture = Picture.create!(restaurant: the_lure,
                          image: File.open(Rails.root.join("db/seeds/Seafood1.jpeg")))
picture = Picture.create!(restaurant: the_lure,
                          image: File.open(Rails.root.join("db/seeds/2.jpeg")))
