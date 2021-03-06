class OrdersController < ApplicationController
  def create
    @order = Order.new order_params
    @order.line_items = get_cart.line_items
    @order.coupon = get_cart.coucher
    if @order.save
      flash[:success] = "you will recieve your food in 2 hours"
      redirect_to  order_path(@order)  
      destroy_cart
    else
      flash[:error] = "somethings wrongs #{@order.errors.full_messages.to_sentence}"
      redirect_to cart_path 
    end 
     
  end 
  private 
  def order_params
    params.require(:order).permit(:name, :phone, :address)
  end   
end
