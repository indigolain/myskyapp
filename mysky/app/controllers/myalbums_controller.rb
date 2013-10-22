class MyalbumsController < ApplicationController
  def index
    if !user_signed_in?
      redirect_to new_user_session_path
    else
      @profiles = current_user
      #@skyimages = Skyimage.find(:all, :conditions => {:user_id => current_user.id})
    end
  end

end
