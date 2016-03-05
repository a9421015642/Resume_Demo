class WorksController < ApplicationController

  def index
    @user= User.find(session[:user_id])
    @works = Work.where(user_id: @user.id)
  end

  def new
    @work = Work.new
  end
  def create
    work = Work.new(work_params)    
      if work.save!
        redirect_to new_basic_information_path
      else
        render :new
      end 
  end
  
  def edit
    @work = Work.find(params[:id])
  end
  def update
    @work = Work.find(params[:id])
      
    if @work.update!(work_params)
      redirect_to works_path
    else
      render :edit
    end 
  end

  def destroy
    @work_id = Work.find(params[:id])
      if @work_id.destroy!
      redirect_to work_path
    end
  end


  private
  def work_params 
    params.require(:work).permit(:title, :description,:link,:user_id)
  end
end