class FriendshipsController < ApplicationController
  def index
    #@friend = Friendship.find(:all, :conditions => {:id => current_user.id})
    @friend = User.all#find(:all, :conditions => {:id => current_user.id})
    @friends = Friendship.find(:all, :conditions => {:user_id => current_user.id})
  end

  def create
    @friend = Friendship.new(params[:user_id])
    @friend.user_id = current_user.id
    @friend.friend_id = params[:user_id]
    if @friend.save
      redirect_to friendships_path, notice: "さくせいされました！"

    else
      @friend = Friendship.all
      redirect_to friendships_path
    end
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    @friendship.destroy
    redirect_to friendships_path
  end
end
