class MenuController < ApplicationController
  def index
    if !params[:section]
    #unless params[:section]    
    #  redirect_to menu_path(section:  Section.first.name)  
      redirect_to menu_path(section: "snack")
      return
    end        
    @sections = Section.all
    section = Section.find_by(name: params[:section])
    @food_items = section.food_items
    get_cart
  end

  def set_cart
    @cart = Cart.create
    session[:cart_id]  =@cart.id
    @cart
  end

  def get_cart
    if session[:cart_id]
      @cart = Cart.find session[:cart_id]
    else
      set_cart
    end  
  end     
end
  