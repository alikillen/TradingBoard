class AddSellerToListings < ActiveRecord::Migration[6.0]
  def change
    add_reference :listings, :seller, foreign_key: {to_table: :users}
  end
end
