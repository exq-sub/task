class PaysController < ApplicationController
  
  def new
    @history = History.all.order(created_at: :desc)
  end
  
  def create
    @order = Order.all
    
        @oder.each do |order|
          #@item = Item.find_by(id: order.item_id)
          #@item.price_sum = order.add_money.to_i + @item.product_price.to_i
          #@item.save
        　@history = History.new(user_id: order.user_id, item_id: oder.item_id)
        　@history.save
        end
    
    @sum = Order.where(user_id: current_user.id).sum(:price_sum)
    @pay = Pay.new(pay_params)
    if @pay.save
      EntryInquiryMailer.confirm_mail(@oder, @sum, @pay).deliver
      
      @oder = Oder.all
      @oder.destroy
      
      redirect_to new_pay_path
    else
       flash.now[:danger] = "入力漏れがあります。"
      render :new_order_path
    end  
  end
  
   private
  def pay_params
    params.require(:pay).permit(:pay_type)
  end
  
end
