class AddReferencesToListings < ActiveRecord::Migration[6.0]
  def change
    add_reference :listings, :listings, foreign_key: {to_table: :users}
  end
end
