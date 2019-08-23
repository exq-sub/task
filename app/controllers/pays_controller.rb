class PaysController < ApplicationController
  
  def new
    
    @historys = History.paginate(page: params[:page], per_page: 5).order(created_at: :desc)
  end
  
  def create
    @orders = Order.where(user_id: current_user.id)
        #@item定義
    @orders.each do |order|
      @history = History.create(user_id: order.user_id, item_id: order.item_id) 
      @item = Item.find_by(id: order.item_id)
      @item.price_sum = @item.price_sum.to_i + order.price_sum.to_i
      @item.save
    end
    
       @pay = Pay.new(pay_params)
    if @pay.save
      @orders = Order.where(user_id: current_user.id)
      @sum = Order.where(user_id: current_user.id).sum(:price_sum)
      @user = User.find_by(id: current_user.id)
      ConfirmMailer.confirm_mail(@orders, @pay, @sum).deliver
      
      Order.where(user_id: current_user.id).destroy_all
      
      redirect_to new_pay_path
    else
       flash.now[:danger] = "入力漏れがあります。"
       #render :new_order_path
    end  
  end
  
   private
  def pay_params
    params.require(:pay).permit(:pay_type)
  end
  
end
