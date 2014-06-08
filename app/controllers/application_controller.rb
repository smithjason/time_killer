class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize_user!
    redirect_to new_session_path unless current_user.present?
  end

  def login user
    session[:user_id] = user.id
  end
end