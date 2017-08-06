class Cart < ApplicationRecord
  has_many :line_items,dependent: :destroy
  def item_count
    line_items.count
  end
  
  def amount
    amount = 0
    line_items.each do |line_item|  
      amount = amount + (line_item.food_item.price) * line_item.quantity
    end
    amount 
  end 
  
end
