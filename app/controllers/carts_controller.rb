class CartsController < ApplicationController
  def add
      params
      cart = get_cart
      line_item = cart.line_items.build line_item_params
      unless cart.save
        flash[:error] ="Can not add! line_item! the number add is not valided"
      else
        flash[:success] ="line_item is added"  
      end  
      redirect_back(fallback_location: menu_path)
  end  
  
  def show
    cart = get_cart
    puts "params: #{params[:couchon]}"
    if params[:couchon] == "CODERSCHOOL"
      puts "why!"
      cart.coucher = 50
      cart.save  
    end
    @cart =  cart
  end  
  
  private
  
  def line_item_params
     params.require(:line_item).permit(:food_item_id, :quantity)
  end  
end


