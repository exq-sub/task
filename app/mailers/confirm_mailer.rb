class ConfirmMailer < ApplicationMailer
  
  
  def confirm_mail(order, pay, sum)
    @order = order
    @pay = pay
    @sum = sum
    @user = User.find_by(user_id: current_user.id)
    mail(
      from: 'a.t.subchord@gmail.com',
      to: '@user.address',
      subject: 'エントリーのお問い合わせ'
      )
  end
  
end
