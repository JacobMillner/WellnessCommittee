class Wusers::RegistrationsController < Devise::RegistrationsController
  
  before_filter :configure_permitted_parameters

  protected
  
  # allows custom parameters for devise
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:isAdmin, :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:isAdmin, :email, :password, :password_confirmation, :current_password)
    end
  end
  # put sign_up code here
  def after_sign_up_path_for(resource)

  end
end 
