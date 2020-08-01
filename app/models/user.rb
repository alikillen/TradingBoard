class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #has_many :listings
  #belongs to makes the foreign key mandatory
  has_many :listings_to_buy, class_name: "Listing", foreign_key: "buyer_id", dependent: :destroy #referring to same table with different key - self ref
  has_many :listings_to_sell, class_name: "Listing", foreign_key: "seller_id", dependent: :destroy #destroys posts if user is destroyed
  #, class_name: "User", foreign_key: "buyer_id"
# belongs_to :seller, class_name: "User"

#see article for bullet gem how to use - careful when querying DB
#2. has_many associations need plural class name includes
#@libraries = Library.where(size: 'large').includes(:books)

end
