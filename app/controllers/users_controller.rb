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
    @posts = Post.all_questions.where(user_id: current_user.id)
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end