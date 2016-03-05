class SkillsController < ApplicationController 

  def index
    @user= User.find(session[:user_id])
    @skills = Skill.where(user_id: @user.id)
    @front_end_skill = Skill.where(category: 1,user_id: @user.id)
    @back_end_skill = Skill.where(category: 2,user_id: @user.id)
    @database_skill =  Skill.where(category: 3,user_id: @user.id)
    @other_skill       =  Skill.where(category: 4,user_id: @user.id)
  end

  def new
    @skill = Skill.new
  end
  
  def create
    skill = Skill.new(skill_params)   
    if skill.save!
      redirect_to new_curriculum_vitae_info_users_path
    else
      render :new
    end 
  end

  def edit
    @skill = Skill.find(params[:id])
  end
  def update
    @skill_edit = Skill.find(params[:id])
      
      if @skill_edit.update!(skill_params)
      redirect_to skills_path
    else
      render :edit
    end 
  end 

  def destroy
    @skill = Skill.find(params[:id])
      if @skill.destroy!
      redirect_to skills_path
    end
  end

  

  private
  def skill_params 
    params.require(:skill).permit(:title, :status, :category ,:user_id)
  end
  
end