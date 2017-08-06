class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :get_cart 
  def get_cart
     return @cart if @cart
    if session[:cart_id]
      @cart = Cart.find session[:cart_id]
    else
      set_cart
    end  
  end     

  def set_cart
    @cart = Cart.create
    session[:cart_id]  =@cart.id
    @cart
  end
  
  def destroy_cart
    session[:cart_id] = nil
  end  
end
