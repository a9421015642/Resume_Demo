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
    
    @user = User.find(session[:user_id])
    # @skills = Skill.where(user_id: @user_new.id)
    @works = Work.where(user_id: @user.id)
    @autobiographies = Autobiography.where(user_id: @user.id)
  end
  def show_curriculum_vitae_info
    @id = params[:id]
    #1.找出登入user
    @user_show = User.find(session[:user_id])
    #2.透過user找出該user對應的基本資料(1對1)
    @basic_info = BasicInformation.find_by(user_id: @user_show.id)
    #3.透過user找出該user對應的技能(1對多)
    #<js  change css>把該user的Skill的title 全部找出來再丟進array
    @skills = Skill.where(user_id: session[:user_id])
    @array = Array.new
    @skills.each do |t|
      @array << t.title
    end
    
    @front_end_skill = Skill.where(category: 1,user_id: session[:user_id])
    @back_end_skill = Skill.where(category: 2,user_id: session[:user_id])
    @database_skill =  Skill.where(category: 3,user_id: session[:user_id])
    @other_skill       =  Skill.where(category: 4,user_id: session[:user_id])
    #4.透過user找出該user對應的作品(1對多)
    @works = Work.where(user_id: session[:user_id])
    #5.透過user找出該user對應的自傳(1對多)
    @autobiographies = Autobiography.where(user_id: session[:user_id])
  end

  def edit_curriculum_vitae_info
    @user = User.find(session[:user_id])
    @basic_info = BasicInformation.find_by(user_id: @user.id)
    @skill = Skill.find_by(user_id: @user.id)
    @work = Work.find_by(user_id: @user.id)
    @autobiography = Autobiography.find_by(user_id: @user.id)
  end

  private 
  def user_params
    params.require(:user).permit(:name , :password)
  end
  
end