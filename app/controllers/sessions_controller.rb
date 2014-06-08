class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      login(user)
      redirect_to user_path(user)
    else
      redirect_to log_in_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
