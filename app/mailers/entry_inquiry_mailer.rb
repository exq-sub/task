class EntryInquiryMailer < ApplicationMailer
  
  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
      from: 'a.t.subchord@gmail.com',
      to: 'ta.sub.test01@gmail.com',
      subject: 'エントリーのお問い合わせ'
      )
  end
  
  
end
