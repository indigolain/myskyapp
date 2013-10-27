class UsersController < ApplicationController
  def index
    if !user_signed_in?
      redirect_to new_user_session_path
    else
      @profile = current_user
      @skyimage = Skyimage.new
      @friend = User.find(:all)
      @user = current_user
      @friends = Friendship.find(:all, :conditions => {:user_id => current_user.id})
      @friendss = current_user
      @friendship = current_user.friendships.all


    end
  end

  def new
    @skyimage = Skyimage.new
  end

  def create
    @skyimage = Skyimage.new
  end

  def show
  end

  def profile
    @user = current_user
    @skyimage = Skyimage.new
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to @user
  end

end
