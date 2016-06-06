class UsersController < ApplicationController

  before_action :set_user, only: [:show]

  def index
  @users = User.all
  end


  def create
    @user = User.new(user_params)
    if !@user.save
      render :new, notice: "There was a problem with registration"
    else
      login(@user)
      redirect_to user_path(@user)
    end
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :username, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
