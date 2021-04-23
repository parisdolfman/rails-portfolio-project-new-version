# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rental.create(street_add: "1428 Elm Street", city: "Springwood", state: "Ohio", owner: "Fred D. Krueger")

Rental.create(street_add: "112 Ocean Avenue", city: "Amityville", state: "NY", owner: "Butch DeFeo")

Rental.create(street_add: "8601 N Thorne Ln SW", city: "Lakewood", state: "WA", owner: "Kirtland Cutter")

User.create(username: "AAA", email: "test@test1.com", password: "123456")

Review.create(title: "Weird Dreams, Nice Lawn", body: "Open kitchen space, large green lawn. Had very strange dreams while living here.", rating: 3, rental_id: 1, user_id: 1)

Review.create(title: "I loved it, husband didn't", body: "While I loved the quaint house, my husband was adamant that he didn't. (Something about voices). Great price for the location.", rating: 4, rental_id: 2, user_id: 1)

Review.create(title: "Sprawling Estate", body: "Plenty of space. Takes a while to heat in the winter but overall loved the home.", rating: 5, rental_id: 3, user_id: 1)

puts "data loaded success"