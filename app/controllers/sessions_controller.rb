class SessionsController < ApplicationController
  
  def new
  end

  def create
    # user = User.find_by_email(params[:email])
    if User.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      redirect_to categories_path, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to logout_sessions_path, :notice => "Logged out!"
  end
end
