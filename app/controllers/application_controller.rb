class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_user, :user_is_logged_in?, :require_login
  
  private

  def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def user_is_logged_in?
    !!session[:user_id]
  end
   def require_login
   end
end
