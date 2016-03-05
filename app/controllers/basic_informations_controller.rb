class BasicInformationsController < ApplicationController 
  
  def index
  end

  def new
    @basic_information = BasicInformation.new
    @user = User.find(session[:user_id])
  end
  def create
    @basic_information = BasicInformation.new(basic_information_params) 
    if @basic_information.save!
      redirect_to root_path
    else
      render :new
    end 
  end

  private
  def basic_information_params    
    params.require(:basic_information).permit(:chinesename, :englishname, :gender, :birthday ,:military_service ,:phone ,:telephone ,:address ,:educational_background ,:other_educational_background,:user_id)
  end

end