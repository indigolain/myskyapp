class FriendshipsController < ApplicationController
  def index
    @people = User.all
  end
  def add

  end

end
