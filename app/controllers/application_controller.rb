class ApplicationController < ActionController::Base
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize_user!
    redirect_to new_session_path unless current_user.present?
  end

  def login user
    session[:user_id] = user.id
  end

  helper_method :current_user, :authorize_user!, :login
  protect_from_forgery with: :exception
end