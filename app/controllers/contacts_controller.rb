class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = "Message sent. We'll be in touch as soon as possible."
    else
      flash.now[:error] = "Error occured. Can't send the message."
      render :new
    end
  end
end
