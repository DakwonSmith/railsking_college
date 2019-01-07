class StudentController < ApplicationController
  def log_in
  end

  def sign_up
  end

  def index
  end

  def new
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(params[:student])
   
    @student.save
    redirect_to @student
  end

  def grades
  end

  def courses
  end

  def profile
  end
end
