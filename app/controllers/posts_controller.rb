class PostsController < ApplicationController
  def index
    @posts = Post.all 
  end

  def new
  end
  
  def show
    @posts = Post.find(params[:id])
  end

  def create
    @posts = Post.new(params.require(:posts).permit(:title, :text))
  
    @posts.save
    redirect_to '/users/index'
  end
end
