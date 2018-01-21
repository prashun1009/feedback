class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def after_sign_in_path_for(resource)
       new_feedback_path
    end 

  	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation])
		devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :password_confirmation])
  	end
end
