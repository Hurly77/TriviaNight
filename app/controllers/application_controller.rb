require 'ostruct'
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :alert, :msg, :error
  before_action :config_permit_params, if: :devise_controller?

  def home
    if current_user.nil?
      redirect_to new_user_registration_path
    end
  end

  protected

  def config_permit_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
