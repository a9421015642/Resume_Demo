class SkillsController < ApplicationController 

  def index
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
  

  private
  def skill_params 
    params.require(:skill).permit(:title, :status, :category ,:user_id)
  end
  
end