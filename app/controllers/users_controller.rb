class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user_id])
    if @user
      redirect_to users_sign_up_path, :notice => "Signed up!"
    else
      render "new"
    end
  end
end
