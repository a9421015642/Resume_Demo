class AutobiographiesController < ApplicationController 

  def index
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


  private
  def autobiography_params 
    params.require(:autobiography).permit(:company, :description,:user_id)
  end
  
end