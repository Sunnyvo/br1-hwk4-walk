class AddCoucherToCarts < ActiveRecord::Migration[5.1]
  def change
    add_column :carts, :coucher, :integer
  end
end
