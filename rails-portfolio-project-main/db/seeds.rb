# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rental.create(street_add: "1428 Elm Street", city: "Springwood", state: "Ohio", owner: "Fred D. Krueger")

User.create(username: "AAA", email: "test@test1.com", password: "123456")

Review.create(title: "Weird Dreams, Nice Lawn", body: "Open kitchen space, large green lawn. Had very strange dreams while living here.", rating: 3, rental_id: 1, user_id: 1)

puts "data loaded success"