class UsersController < ApplicationController
  before_filter :require_login
  def new
    @user = User.new
  end
  def create
    puts params[:user].inspect
    @user = User.new(params[:user])
    if @user.save

      redirect_to sign_up_path, :notice => "Signed up!"
    else
      render "new"
    end
  end
end
