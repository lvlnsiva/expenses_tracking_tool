class SessionsController < ApplicationController
  def new
  end
  
  def create
    @user = User.find(params[:email], params[:password])
    redirect_to log_in_path, :notice => "welcome "
    
  end
 



  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
  
end
