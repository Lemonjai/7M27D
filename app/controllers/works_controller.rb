class WorksController < ApplicationController

  before_action :find_post, only: [:show, :edit, :update, :destroy]
  
  def index
  end

  def show
  end

  def edit
  end

  def update
    if @work.update work_params
      redirect_to @work, notice: "Work has been saved!!!"
    else
      render 'edit'
    end
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new work_params

    if @work.save
      redirect_to @work, notice: "Work has been saved!!!"
    else
      render 'new', notice: "Unable to save!!!"
    end
  end

  def destroy
    @work.destroy
    redirect_to works_path
  end

  private
    def work_params
      params.require(:work).permit(:title, :content)
    end

    def find_post
      @work = Work.find(params[:id])
    end

end
