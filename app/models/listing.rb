class Listing < ApplicationRecord
  #belongs_to :user
  #use optional true because when we make a listing it wont necessarily have a buyer - cant do this for seller
  belongs_to :buyer, class_name: "User", optional: true #need to specify the model by listing the class name. buyer = user.new
  belongs_to :seller, class_name: "User" #seller = user.new

  #guest role - login, browse, logout

  #see article for info on bullet gem - careful when querying DB
  #3. belongs_to / has_one associations need singular class name includes
#@books = Book.all.includes(:author)

#has_one :order

#enum classing: %w[fiction nonfiction unknown]
#enum binding: %w[paperback hardback unspecified]

  has_one_attached :picture
end
