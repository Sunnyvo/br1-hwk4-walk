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
  end
end
  