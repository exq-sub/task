class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  
  def new
    @item = Item.new
  end
  
  def create
    @item = current_user.items.new(item_params)
    
    if @item.save
      redirect_to root_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end
  
  private
  def item_params
    params.require(:item).permit(:image, :product_name, :product_price, :info, :description)
  end
  
end
