class FoodItem < ApplicationRecord
  belongs_to :section
  validates :name, :price, presence: true
  def fake_image_url
    "http://loremflickr.com/320/240/" + name.parameterize
  end
end
