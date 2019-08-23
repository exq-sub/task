class HomesController < ApplicationController
  def top
    
    @items = Item.paginate(page: params[:page], per_page: 9)
  end
  
  def description
  end
  
  def entry
  end
end
