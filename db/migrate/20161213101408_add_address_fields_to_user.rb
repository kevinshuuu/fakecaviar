class AddAddressFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :address_line_one, :string
    add_column :users, :address_line_two, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip_code, :string
  end
end
