# Preview all emails at http://localhost:3000/rails/mailers/entry_inquiry_mailer
class EntryInquiryMailerPreview < ActionMailer::Preview

    def inquiry
       inquiry = EntryInquiry.new(name: "太郎", message: "エントリー内容")
       EntryInquiryMailer.send_mail(inquiry)
    end
    
end
