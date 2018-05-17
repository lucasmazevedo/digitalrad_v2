class AdminController < ApplicationController
  layout 'admin'
  before_action :authenticate_admin!
  before_action :configure_permitted_parameters, if: :devise_controller?


    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation, :avatar])
        devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :password, :password_confirmation, :avatar])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :password_confirmation, :current_password, :avatar])
    end



end
