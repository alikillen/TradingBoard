class ChangeNameOnUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :name, :string
  end
end
