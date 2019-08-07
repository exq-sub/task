class EntriesController < ApplicationController
  def new
    @entry = EntryInquiry.new
  end

  def create
  @entry = EntryInquiry.new(entry_params)
  if @entry.save
     EntryInquiryMailer.send_mail(@entry).deliver
     redirect_to root_path, success: 'エントリー内容を送信しました'
  else
    flash.now[:danger] = "エントリーに失敗しました"
     render :new
  end

  end
  
  private
  
  def entry_params
    params.require(:entry_inquiry).permit(:name, :message)
  end
  
end