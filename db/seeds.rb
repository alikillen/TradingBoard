# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


20.times do
  Listing.create(
  name:Faker::Game.title,
  description:Faker::Movie.quote,
  #date_posted:Faker::Date.between(from: '2014-09-23', to: Date.today),
  price_type: #random of 3
  price: #random, must be zero if price_type is free
  category: #random
  
  photo: #random from faker
  
)
end