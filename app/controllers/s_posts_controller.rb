class SPostsController < ApplicationController
  def index
    @s_post = SPost.all 
  end

  def new
  end
  
  def show
    @s_post = SPost.find(params[:id])
  end

  def create
    @s_post = SPost.new(params.require(:s_posts).permit(:title, :text))
  
    @s_post.save
    redirect_to '/student/index'
  end
end
