class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit :name, :email, :password, :password_confirmation, :avatar
      end
      devise_parameter_sanitizer.for(:edit) do |u|
        u.permit :name, :email, :password, :password_confirmation, :avatar
      end
      devise_parameter_sanitizer.for(:account_update) do |u|
        u.permit :name, :email, :password, :password_confirmation, :current_password,:avatar
      end
    end
  protect_from_forgery with: :exception

  before_filter :set_search
  def set_search
    @search=User.search(params[:q])
  end

  before_filter :set_skyimage
  def set_skyimage
    @skyimage=Skyimage.new
  end
end
