class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  devise_group :member, contains: [:student, :company]

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def after_sign_in_path_for(resource)
      resource.is_a?(Company) ? employers_path : root_path
    end

    def after_sign_up_path_for(resource)
      resource.is_a?(Company) ? employers_path : root_path
    end

    def after_sign_out_path_for(resource)
      resource.is_a?(Company) ? employers_path : root_path
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :nim, :email, :password, :password_confirmation, :company_name, :phone_number) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :last_name, :nim, :email, :password, :password_confirmation,:company_name, :phone_number, :current_password) }
    end

    rescue_from ActiveRecord::RecordNotFound do
      flash[:warning] = 'Resource not found.'
      redirect_back_or root_path
    end

    def redirect_back_or(path)
      redirect_to request.referer || path
    end
end
