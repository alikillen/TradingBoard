class RemovePhotoFromListings < ActiveRecord::Migration[6.0]
  def up
    remove_column :listings, :photo
  end

  def down
    add_column :listings, :photo, :string
  end


end
