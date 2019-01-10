class UsersController < ApplicationController
  #layout "authentication"

  #before_action :require_login, only: [:new]

  def index
    @users = User.all
  end

  def new
    @user = User.new 
  end #End of new

  def create
    @user = User.new(params.require(:user).permit(:username, :firstname, :lastname, :email, :password, :encrypted_password))
    if @user.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
      redirect_to 'users#index'
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
      redirect_to back
    end #End of If statement
  end #end of create
  





  def show
    @user = User.find(params[:id])
  end #End of Show 

end #end of class
