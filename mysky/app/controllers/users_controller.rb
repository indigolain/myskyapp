class UsersController < ApplicationController
  def index
    if !user_signed_in?
      redirect_to new_user_session_path
    else
      @profile = current_user
    end
  end

  def profile
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to @user
  end

end
