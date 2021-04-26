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

User.create(username: "BBB", email: "test@test2.com", password: "1234567")

User.create(username: "CCC", email: "test@test3.com", password: "12345678")


Review.create!(title: "Weird Dreams, Nice Lawn", body: "Open kitchen space, large green lawn. Had very strange dreams while living here.", rating: 3, rental_id: 1, user_id: 1)

Review.create!(title: "Tenant Left Items", body: "Loved the master bedroom, but wasn't thrilled that the tenant left behind items.", rating: 2, rental_id: 2, user_id: 2)

Review.create!(title: "Beautiful Furnished Basement", body: "Basement was fully furnished and was able to convert it into an office space. Loved the quiet neighborhood.", rating: 5, rental_id: 3, user_id: 3)


Review.create!(title: "I loved it, husband didn't", body: "While I loved the quaint house, my husband was adamant that he didn't. (Something about voices). Great price for the location.", rating: 4, rental_id: 1, user_id: 1)

Review.create!(title: "Very Cold", body: "The house was next to impossible to heat and was cold even in the summer. Heating costs were through the roof.", rating: 2, rental_id: 2, user_id: 2)

Review.create!(title: "I loved it, husband didn't", body: "While I loved the quaint house, my husband was adamant that he didn't. (Something about voices). Great price for the location.", rating: 4, rental_id: 3, user_id: 3)


Review.create!(title: "Sprawling Estate", body: "Plenty of space, landlord was very accomodating", rating: 5, rental_id: 1, user_id: 1)

Review.create!(title: "Beautiful Trees in Backyard", body: "Beautiful trees in backyard although the owls made strange noises at night.", rating: 3, rental_id: 2, user_id: 2)

Review.create!(title: "Stains Under All Rugs", body: "I noticed the rugs were placed oddly, and when lifted to clean the floors revealed large rust stains. We had someone out twice to clean them but they weren't able to be removed. Faucets produced rust colored water as well.", rating: 2, rental_id: 3, user_id: 3)

puts "data loaded success"