class UserController < ApplicationController

  def index
    @new_user = User.new
  end

  def create
    @user = b ser.create(params[:user])
  end
end