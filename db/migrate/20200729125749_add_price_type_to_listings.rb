class AddPriceTypeToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :price_type, :integer
  end
end
