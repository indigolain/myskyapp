class UsersController < ApplicationController
  def index
    if !user_signed_in?
      redirect_to new_user_session_path
    else
      @profile = current_user
      @friend = User.find(:all)
      @user = current_user
      @friends = Friendship.find(:all, :conditions => {:user_id => current_user.id})
      @friendss = current_user
      @friendship = current_user.friendships.all
    end
  end

  def new
  end

  def create
  end

  def show
    @searched_user = @search.result
  end

  def profile
    @user = current_user
    @searched_user = @search.result
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to @user
  end

  def search
    @searched_user = @search.result
  end
end
