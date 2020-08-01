class AddBuyerIdToListings < ActiveRecord::Migration[6.0]
  def change
   # add_reference :listings, :users, null: false, foreign_key: true

    #Create a supplier_id column and a foreign key to the firms table
    add_reference :listings, :buyer_id, foreign_key: {to_table: :users}
  end
end
