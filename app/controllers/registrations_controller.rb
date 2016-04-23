class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(params[:registration])
    @registration.request = request
    if @registration.deliver
      flash[:success] = "We have received your application. We will be in touch within 24 hours."
      redirect_to new_registration_path
    else
      flash[:error] = "Error occured. Please try again."
      render :new
    end
  end
end
