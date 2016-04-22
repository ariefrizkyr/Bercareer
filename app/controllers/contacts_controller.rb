class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to new_contact_path
      flash.now[:success] = "Message sent. We'll be in touch as soon as possible."
    else
      flash.now[:error] = "Error occured. Can't send the message."
      render :new
    end
  end
end
