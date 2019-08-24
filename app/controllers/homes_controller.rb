class HomesController < ApplicationController
  def top
    
     search_query = params[:q]
    if search_query
        # あいまい検索
        @items = Item.where("product_name LIKE ?", "%#{search_query}%").paginate(page: params[:page], per_page: 9)
       
        
    else
        @items = Item.paginate(page: params[:page], per_page: 9)
    end
  end
  
  
  
  
  def description
  end
  
  def entry
  end
end
