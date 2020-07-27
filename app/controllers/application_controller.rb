require 'ostruct'
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :alert, :msg, :error
  helper_method :current_user
  

  def home
  end

  def current_user
    binding.pry
    @current_user ||= User.find session[:user_id] if session[:user_id]
    if @current_user
      @current_user
    else
      OpenStruct.new(name: "Guest")
    end
  end
  
end
