module ApplicationHelper

  #login
  def current_user
     @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def logged_in?
    !!current_user
  end

  #user
  def find_user
    @user_new = User.find(session[:user_id])
  end
  
  #basic_information
  def select_user_basic
    @user_new = find_user
    @user_basic = BasicInformation.find_by(user_id: @user_new.id)
  end
  def user_basic?
    !!select_user_basic
  end


end
