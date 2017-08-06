class MenuController < ApplicationController
  def index
    if !params[:section]
    #unless params[:section]    
      redirect_to menu_path(section: "snack")
      return
    end        
    @sections = Section.all
    section = Section.find_by(name: params[:section])
    @food_items = section.food_items
    puts "params: #{params[:sort_param]}"
    if params[:sort_param]
      @food_items = @food_items.order("#{params[:sort_param]}") 
    end
    if params[:search]
      @food_items = @food_items.where("name ILike ?","%#{params[:search]}%")
    end  
    if params[:cuisine]
      @food_items = @food_items.where(cuisine: params[:cuisine])
    end  
  end






end
  