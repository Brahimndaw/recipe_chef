class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      login(@user)
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end
  end

  def destroy
    session.delete(:user_id)
    flash.discard
    flash[:danger] = "You are logged out"
    redirect_to root_url
  end
  
end
