class Order < ActiveRecord::Base
  has_many :line_items
  belongs_to :restaurant

  def total
    line_items.inject(0) do |total, li|
      total += li.menu_item.price
    end
  end
end
