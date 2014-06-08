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
end
