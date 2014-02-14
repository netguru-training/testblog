class ApplicationController < ActionController::Base
  protect_from_forgery

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :authenticate_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:account_update) << :nickname
  end
end
