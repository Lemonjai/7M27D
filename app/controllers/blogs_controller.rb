class BlogsController < ApplicationController

  before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @blogs = Blog.all.order("created_at desc").paginate(page: params[:page], per_page: 10)
  end

  def show
  end

  def edit
  end

  def update
    if @blog.update blog_params
      redirect_to @blog, notice: "Blog has been saved!!!"
    else
      render 'edit'
    end
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new blog_params

    if @blog.save
      redirect_to @blog, notice: "Blog has been saved!!!"
    else
      render 'new', notice: "Unable to save!!!"
    end
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path
  end

  private
    def blog_params
      params.require(:blog).permit(:title, :content, :slug)
    end

    def find_post
      @blog = Blog.friendly.find(params[:id])
    end

end
