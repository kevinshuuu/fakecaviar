class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :restaurant_id
      t.string :image_path
    end
  end
end
