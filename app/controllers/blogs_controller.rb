class BlogsController < ApplicationController
  before_action :set_blog, only: %i[ show edit update destroy ]
  def index
    @blogs = Blog.all
  end
  def show
  end
  def new
    @blog = Blog.new
  end
  def edit
  end
  def create
  end
  def update
  end
  def destroy
  end
  private
    def set_blog
      @blog = Blog.find(params[:id])
    end
    def blog_params
      params.require(:blog).permit(:title, :content)
    end
end
