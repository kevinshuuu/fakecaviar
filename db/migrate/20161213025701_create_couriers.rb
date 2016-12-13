class CreateCouriers < ActiveRecord::Migration
  def change
    create_table :couriers do |t|
      t.string :first_name
      t.string :last_name
    end
  end
end
