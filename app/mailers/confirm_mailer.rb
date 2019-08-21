class ConfirmMailer < ApplicationMailer
  
  
  def confirm_mail(orders, pay, sum)
    @orders = orders
    @pay = pay
    @sum = sum
    mail(
      from: 'a.t.subchord@gmail.com',
      to: '@user.address',
      subject: 'エントリーのお問い合わせ'
      )
  end
  
end
