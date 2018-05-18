class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def favorites
    @user = User.find(params[:id])
  end

  def follows
    @user = User.find(params[:id])
  end

  def followers
    @user  = User.find(params[:id])
  end

  def user_params
  params.require(:user).permit(:name, :skill_list, :interest_list)
  end
  
end