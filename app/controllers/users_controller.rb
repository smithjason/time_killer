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
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end














# class UsersController < ApplicationController

#   def index
#     if current_user
#       @user = User.find(current_user)
#       @questions = @user.questions

# # Counting the number of answers and comments
#       @answer = []
#       @comments = []

#       @questions.each do |question|
#         @answer << question.answers.count
#         @comments << question.comments.count
#           question.answers.each do |answer|
#             @comments << answer.comments.count
#           end
#       end
#       render 'index'
#     else
#       redirect_to new_session_path
#     end
#   end

#   def new
#     @user = User.new
#   end

#   def create
#     @user = User.new params[:user]
#     if @user.save

#       redirect_to root_path
#     else
#        p "errors #{@user.errors.full_messages}"
#       render :new
#     end
#   end
# end

