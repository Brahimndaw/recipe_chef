class SessionsController < ApplicationController

  def new
    @user = User.new
    @user = User.all
  end


  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:success] = "Welcome to Recipe Chefs!"
      redirect_to user_path(@user)
    else
      flash[:danger] = "Your username or password is invalid"
      redirect_to signin_path
    end
  end


    def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

end
