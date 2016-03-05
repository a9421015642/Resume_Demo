class UsersController < ApplicationController

  def index
  end
  def show
    @user = User.find(session[:user_id])
  end

  def new
    @user = User.new
  end
  def create
    user = User.new(user_params)
    if user.save!
      redirect_to root_path
    else
      render :new
    end 
  end



  def new_curriculum_vitae_info
    @autobiography = Autobiography.new
    
    @front_end_skill =   Skill.where(category: 1,User_id: session[:user_id])
    @back_end_skill =   Skill.where(category: 2,User_id: session[:user_id])
    @database_skill =   Skill.where(category: 3,User_id: session[:user_id])
    @other_skill       =    Skill.where(category: 4,User_id: session[:user_id])
    
    @user_new = User.find(session[:user_id])
    @skills = Skill.where(user_id: @user_new.id)
    @works = Work.where(user_id: @user_new.id)
    @autobiographies = Autobiography.where(user_id: @user_new.id)
  end

  private 
  def user_params
    params.require(:user).permit(:name , :password)
  end
  
end