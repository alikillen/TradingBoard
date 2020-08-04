class AddBuyerToListings < ActiveRecord::Migration[6.0]
  def change
    add_reference :listings, :buyer, foreign_key: {to_table: :users}
  end
end
