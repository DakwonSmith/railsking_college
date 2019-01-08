class StudentController < ApplicationController
  def log_in
  end

  def sign_up
  end

  def index
    @s_post = SPost.all
  end

  def new
  end

  def show
    @s_post = SPost.find(params[:id])

    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(params[:student])
   
    @student.save
    redirect_to @student

    @s_post = SPost.new(params.require(:s_posts).permit(:title, :text))
  
    @s_post.save
    redirect_to '/student/index'
  end

  def grades
  end

  def courses
  end

  def profile
  end
end
