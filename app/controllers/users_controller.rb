class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
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

 def set_allowed_params
   @allowed_params = params.require(:user).permit(:username, :photo, :description, :first_name, :last_name, :rating)
 end
end
