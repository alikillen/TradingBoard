class AddTitleToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :title, :char
  end
end
