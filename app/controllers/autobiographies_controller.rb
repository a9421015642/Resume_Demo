class AutobiographiesController < ApplicationController 

  def index
    @user = User.find(session[:user_id])
    @autobiographies = Autobiography.where(user_id: @user.id)
     @first_autobiography = @autobiographies.first
  end
  
  def new
    @autobiography = Autobiography.new
  end
  def create
    autobiography = Autobiography.new(autobiography_params)   
      if autobiography.save!
          redirect_to new_basic_information_path
      else
        render :new
      end 
  end

def edit
    @autobiography = Autobiography.find(params[:id])
  end
  def update
    @autobiography = Autobiography.find(params[:id])
      
      if @autobiography.update!(autobiography_params)
      redirect_to autobiographies_path
    else
      render :edit
    end 
  end
  
  def destroy
    @autobiography_id = Autobiography.find(params[:id])
      if @autobiography_id.destroy!
      redirect_to autobiography_path
    end
  end




  private
  def autobiography_params 
    params.require(:autobiography).permit(:company, :description,:user_id)
  end
  
end