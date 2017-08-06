class RemoveCouponFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :Coupon, :integer
  end
end
