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
  #skill
  def select_user_skill
    @user_new = find_user
    @user_skill = Skill.find_by(User_id: @user_new.id)
  end
  def user_skill?
    !!select_user_skill
  end
    
  #work
  def select_user_work
    @user_new = find_user
    @user_work = Work.find_by(User_id: @user_new.id)
  end
  def user_work?
    !!select_user_work
  end
  
  #Autobiography
  def select_user_autobiography
    @user_new = find_user
    @user_autobiography = Autobiography.find_by(User_id: @user_new.id)
  end
  def user_autobiography?
    !!select_user_autobiography
  end

  #判斷 front_end
  def skill_find_userid_front_end
    @front_end_skill = Skill.where(category: 1,User_id: session[:user_id])
  end
  def find_userid_front_end?
    !!skill_find_userid_front_end.first
  end
  #判斷 back_end
  def skill_find_userid_back_end
    @back_end_skill = Skill.where(category: 2,User_id: session[:user_id])
  end
  def find_userid_back_end?
    !!skill_find_userid_back_end.first
  end
  #判斷 database
  def skill_find_userid_database
    @database_skill =  Skill.where(category: 3,User_id: session[:user_id])
  end
  def find_userid_database?
    !!skill_find_userid_database.first
  end
  #判斷 other
  def skill_find_userid_other
    @other_skill =  Skill.where(category: 4,User_id: session[:user_id])
  end
  def find_userid_other?
    !!skill_find_userid_other.first
  end


  #work
  def select_user_work
    @user_new = find_user
    @user_work = Work.find_by(User_id: @user_new.id)
  end
  def user_work?
    !!select_user_work
  end
  
  #Autobiography
  def select_user_autobiography
    @user_new = find_user
    @user_autobiography = Autobiography.find_by(User_id: @user_new.id)
  end
  def user_autobiography?
    !!select_user_autobiography
  end

  def getskill_status(title,status)
    case status  
      when 4  then  text = title+"  :   精通"
        when 3  then  text = title+"  :   小有研究"
        when 2  then  text = title+"  :   一般"
      when 1  then  text = title+"  :   略懂" 
      end
  end

end
