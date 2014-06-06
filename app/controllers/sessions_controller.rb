class SessionsController < ApplicationController

  def new
  end

  def create
    user= User.authenticate(params[:email], params[:password])
  end
end
