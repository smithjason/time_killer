class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Successfully Signed Up!"
      redirect_to root_url
    else
      flash[:notice] = "Login Unsuccessful"
      redirect_to sign_up_path
    end
  end

  def show
    @user = User.find(params[:id])
    # we don't actually take in their name despite
    # it's a field in our db
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
