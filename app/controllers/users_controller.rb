class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @name = current_user.name
    @introduction = current_user.introduction
    
  end

  def index
    @users = User.all
    
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
    
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
