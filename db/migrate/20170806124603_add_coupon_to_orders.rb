class AddCouponToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :Coupon, :integer
  end
end
