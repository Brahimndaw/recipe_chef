class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end


  def create
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        flash[:success] = "Welcome to recipe chef"
        redirect_to @user
      else
        redirect_to new_user_path
      end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:success]= "You have succesfully updated your user"
      redirect_to @user
    else
      flash[:danger] = "Update failed please check your paramters"
    end
  end
 
 def destroy
  @user.destroy
  redirect_to root_url
end

  private

  def user_params
    params.require(:user).permit(:name, :email, :username, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
