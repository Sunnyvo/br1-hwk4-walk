class AddDetailsToFoodItem < ActiveRecord::Migration[5.1]
  def change
    add_column :food_items, :cuisine, :string
    add_column :food_items, :view, :integer
  end
end
