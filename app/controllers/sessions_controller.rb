class SessionsController < ApplicationController
  layout 'application'
  def index
  end
  def new
  end
  def create
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:name] = user.name
      redirect_to root_path
    else
      redirect_to login_path
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
  
end