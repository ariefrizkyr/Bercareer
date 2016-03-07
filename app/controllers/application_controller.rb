class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def after_sign_in_path_for(resource)
      resource.is_a?(Company) ? company_home_path : root_path
    end

    def after_sign_up_path_for(resource)
      resource.is_a?(Company) ? company_home_path : root_path
    end

    def after_sign_out_path_for(resource)
      resource.is_a?(Company) ? company_home_path : root_path
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :full_name << :nim << :company_name << :phone_number
      devise_parameter_sanitizer.for(:account_update) << :full_name << :nim << :company_name << :phone_number
    end
end
