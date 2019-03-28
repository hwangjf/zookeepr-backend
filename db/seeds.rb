# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Species.create(name: 'mammal')
Animal.create(name: 'Charlie', diet: 1, image_url: 'https://media.beliefnet.com/~/media/photos-with-attribution/entertainment/001/charlie-brown_credit-charles-m-schulz.jpg', species_id: 1)
