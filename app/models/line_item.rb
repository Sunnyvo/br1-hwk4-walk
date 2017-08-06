class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :food_item
  belongs_to :order, optional: true
  
  validates  :quantity, 
              presence: true, 
              numericality: {greater_than: 0, less_than: 10, only_integer: true}

  def name
    food_item.name
  end              
end
