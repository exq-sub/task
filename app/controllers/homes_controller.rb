class HomesController < ApplicationController
  def top
    @items = Item.all
  end
  
  def description
  end
  
  def entry
  end
end
