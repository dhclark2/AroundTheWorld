# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

la_v = Restaurant.create!(name: "LA V", address: "441 Central Ave, St. Petersburg, FL 33701", phone: "123", hours: "24")
buya = Restaurant.create!(name: "Buya", address: "456 central", phone: "654", hours: "24")
iberian_rooster = Restaurant.create!(name: "Iberian Rooster", address: "789 central", phone: "987", hours: "24")
the_lure = Restaurant.create!(name: "The Lure", address: "321 central", phone: "321", hours: "24")
geocode = Geocode.new(la_v)
geocode.lookup
geocode = Geocode.new(buya)
geocode.lookup
geocode = Geocode.new(iberian_rooster)
geocode.lookup
geocode = Geocode.new(the_lure)
geocode.lookup
picture = Picture.create!(restaurant: the_lure,
                          image: File.open(Rails.root.join("db/seeds/Seafood1.jpeg")))
picture = Picture.create!(restaurant: the_lure,
                          image: File.open(Rails.root.join("db/seeds/2.jpeg")))
