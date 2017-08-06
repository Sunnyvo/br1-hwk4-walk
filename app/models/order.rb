class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  validates :name, presence: true 
  validates :address, presence: true 
  validates :phone, presence: true
  
  def amount
    amount = 0
    line_items.each do |line_item|  
      amount = amount + (line_item.food_item.price) * line_item.quantity
    end  
    amount
  end 
end
