class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  protect_from_forgery with: :exception
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:email, :firstname, :lastname)
    devise_parameter_sanitizer.for(:account_update).push(:email, :firstname, :lastname, :password, :password_confirmation, :current_password)
  end
end
