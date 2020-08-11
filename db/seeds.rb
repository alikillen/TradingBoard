# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


def attach_pictures_to_listings
  listings = Listing.all
  i = 1
  listing.each do |listing|
  string1 = "../app/assets/images/#{i}.jpg" #NEED CORRECT PATH HERE
  string2 = "#{i}.jpg"
       listing.photo.attach(
           io: File.open(string1),
           filename: string2,
           content_type: 'image/jpg',
           identify: false
       )
          puts "added listing image to #{listing.title}, i = #{i}"
         i += 1
         i = 1 if i > 15
   end
end

require 'faker'

 15.times do
  new_user = User.new
  new_user.email= Faker::Internet.email
  new_user.password = "password"
  new_user.name = Faker::Name.name
  
  listing = Listing.new()
  listing.title = Faker::Game.title
  listing.description = Faker::Movie.quote
  listing.seller = user
  listing.price_type = rand(0..3)

  if price_type == 1
    listing.price = 0
  else listing.price = Faker::Number.between(from: 1, to: 1000)
  
  listing.category = rand(0..2)
  listing.photo = listing.attach_pictures_to_listings #method above?? #image.attach(io: File.open('/path/to/file'), filename: 'file.pdf', content_type: 'image/jpg')
  
  new_user.save
  listing.save

 end




#where to specify path? D:\ALI FILES\Programming\projects\TERM_2\ASSESSMENT\Alison_Killen_T2A2\src\TradingBoard\app\assets\images


 
#   #listing.price = price_type == 1 ? : 0 : :Faker::Number.between(from: 1, to: 1000)
# 20.times do
#   Listing.create(
#   title:Faker::Game.title,
#   description:Faker::Movie.quote,
#   created_at:Faker::Date.between(from: '2014-09-23', to: Date.today) -#CANNOT BE BEFORE USER JOINED SITE
#   #updated_at - cant be null?
#   price_type: {fixed: 0, free: 1, negotiable: 2, swap: 3}.to_a.sample #random of 3 of enums
#   price:  if price_type == 1 ? :0 : :Faker::Number.between(from: 1, to: 1000) # must be zero if price_type is free
#   category: {tabletop: 0, card: 1, video: 2}.to_a.sample #random of 3 enums
#   seller_id: #increment. HOW DO I ASSOCIATE THIS WITH AN EXISTING USER or is it handled by db
#   buyer_id: #SKIP? can be null for now but want the ability to edit
#   photo: listing.image.attach(io: File.open('/path/to/file'), filename: 'file.pdf', content_type: 'application/pdf') #select image from folder at random
  
#   #random from faker or local storage, not defined in DB?? #images to match categories somehow?
  
)


#how to link users to their listings?
#will i have issues adding db columns and more details later if i seed with only basic info? (buyerid, location, contact, etc)
#make sure datatypes are the same as db schema

#run rails seed and migrate
#deploy git
#heroku run rake db:seed
#then deploy heroku