class ChangeLineItemItemToMenuItem < ActiveRecord::Migration[5.0]
  def change
    rename_column :line_items, :item_id, :menu_item_id
  end
end
