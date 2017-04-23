class ContactsController < ApplicationController
  def new 
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = "پیام شما با موفقیت ارسال شد. کارشناسان ما در اولین فرصت با شما تماس خواهند گرفت."
      #sleep(30.0)
      #redirect_to root_path
    else
      flash.now[:error] = "متاسفانه ارسال پیام شما با مشکلاتی مواجه شده است. لطفاْ مجدداْ تلاش کنید."
      render :new
    end
  end
  
end