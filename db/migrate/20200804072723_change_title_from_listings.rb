class ChangeTitleFromListings < ActiveRecord::Migration[6.0]
  def up
    change_column :listings, :title, :string
  end
  #up is the new migration

  def down
    change_column :listings, :title, :char
  end
  #down is back to how it was previously

end
