class UsersController < ApplicationController

  def show
    @user = User.all
  end

  def edit
    @user = User.all
    if current_user.id == @user
    else
      redirect_to root_path
    end
  end

  def update
    @user = User.find(params[:id])
    if user.update(user_params)
      redirect_to action: :show
    else
      @user = user
      render :edit
    end
  end

  def delete
  end


  private 
  def user_param
    params.require(:user).permit(:nickname, :email, :password).merge(current_user.id)
  end
end
