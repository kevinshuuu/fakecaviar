class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line_one
      t.string :line_two
      t.string :zip_code
      t.string :city
      t.string :state
      t.integer :user_id
      t.integer :restaurant_id
    end
  end
end
