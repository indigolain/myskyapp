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

end
