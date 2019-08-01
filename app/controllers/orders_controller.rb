class OrdersController < ApplicationController
  
  def new
    @orders = Order.where(user_id: current_user.id)
    
    @sum = Order.where(user_id: current_user.id).sum(:price_sum)
     
  end
  
  def create
    @order = Order.new(order_params)
    @item = Item.find_by(id: @order.item_id)
    @order.price_sum = @order.add_money.to_i + @item.product_price.to_i
    @order.user_id =current_user.id
    
    if @order.save
      redirect_to new_order_path, success: '支援内容が作成できました'
    else
      flash.now[:danger] = '注文できませんでした'
    end
    
  end
  
  
  private
  def order_params
    params.require(:order).permit(:item_id, :add_money)
  end
  
end
