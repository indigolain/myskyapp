class SkyimagesController < ApplicationController
  def index

  end

  def new
    @skyimage = Skyimage.new
  end

  def create
    attr = params[:skyimage].permit(:image,:title,:location)
    @skyimage = Skyimage.new(attr)
    @skyimage.user_id = current_user.id
    if @skyimage.save
      redirect_to users_path, notice: "さくせいされました！"
    else
      @skyimage = Skyimage.all
      redirect_to users_path
    end
  end

  def show
    @my_skyimages = Skyimage.find(current_user.id)
  end

  def destroy
    @skyimages = Skyimage.find(params[:id])
    @skyimages.destroy
    render myalbums_path
  end
end
