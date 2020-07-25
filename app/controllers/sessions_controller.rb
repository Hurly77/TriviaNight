class SessionsController < ApplicationController
  before_action :current_user

  def new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      redirect_to new_session_path
    end
  end

  def facebook
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
    end
 
    session[:user_id] = @user.id
 
    render '/'
  end

  def destroy
    session.clear
    redirect_to root_path
  end


  
  private
  
  def auth
    request.env['omniauth.auth']
  end
end
