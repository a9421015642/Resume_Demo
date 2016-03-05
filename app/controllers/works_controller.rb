class WorksController < ApplicationController

  def index
  end
  # def show
  #   @works = Work.where(params[:user_id])
  # end
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
  


  private
  def work_params 
    params.require(:work).permit(:title, :description,:link,:user_id)
  end
end