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

  has_one_attached :photo
  #need to validate?
  validates :title, presence: true
  validates :description, presence: true
  validates :price_type, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :seller_id, presence: true
  validates :photo, presence: true  

  # enums as a hash #enum sex: {female: 0, male: 1} 

  #enums as an array with syntactic sugar so you dont have to use " or list indexes?
  #best practice to do it as a hash
  enum price_type: {fixed: 0, free: 1, negotiable: 2, swap: 3}
  enum category: {tabletop: 0, card: 1, video: 2}
end
