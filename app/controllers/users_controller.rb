class UsersController < Clearance::UsersController
  layout "authentication"

  #before_action :require_login, only: [:new]

  def new
    @user = User.new 
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
      redirect_to root_url
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
      redirect_to back
    end
    
  end

  private
    def user_params
      params.require(:user).permit(:username, :firstname, :lastname, :email, :password, :encrypted_password)
    end

end


  def show
  end
end
