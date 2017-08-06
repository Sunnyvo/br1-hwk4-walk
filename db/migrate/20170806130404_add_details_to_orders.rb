class AddDetailsToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :coupon, :integer
  end
end
