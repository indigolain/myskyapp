class MyalbumsController < ApplicationController
  def index
    if !user_signed_in?
      redirect_to new_user_session_path
    else
      @profiles = current_user
      @skyimage = Skyimage.new
    end
  end

end
