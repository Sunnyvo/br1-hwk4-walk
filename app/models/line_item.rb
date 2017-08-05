class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :food_item
  validates  :quantity, 
              presence: true, 
              numericality: {greater_than: 0}
end
