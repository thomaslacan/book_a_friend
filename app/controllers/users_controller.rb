class UsersController < ApplicationController
  before_action :set_user, only: [ :show, :edit, :update ]

  def show
  end

  def edit
    if @user == current_user
      @user
    else
      render :show
    end
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private

  def set_user
   @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :photo, :description, :first_name, :last_name)
  end
end
