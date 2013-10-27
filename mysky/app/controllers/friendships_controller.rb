class FriendshipsController < ApplicationController
  def index
    if !user_signed_in?
      redirect_to new_user_session_path
    else
      @friend = User.find(:all)
      @user = current_user
      @friends = Friendship.find(:all, :conditions => {:user_id => current_user.id})
      @friendss = current_user
      @friendship = current_user.friendships.all
      @skyimage = Skyimage.new

    end
  end

  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save
      flash[:notice] = "Added friend."
        redirect_to friendships_path
      else
        flash[:error] = "Unable to add friend."
        redirect_to friendships_path
      end
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Removed friendship."
    redirect_to friendships_path
  end

end
