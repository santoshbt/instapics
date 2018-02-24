class HomeController < ApplicationController
  before_action :create_instagram_client, only: :index

  def index   
    unless session[:access_token].blank?
      @user = @client.user
      @username = @user.full_name
      @recent_photos = @client.user_recent_media
      @profile_pic = @recent_photos.first
    end
  end

  def connect
    begin
      redirect_to Instagram.authorize_url(:redirect_uri => CALLBACK_URL)
    rescue Exception => e
      puts e.inspect
    end
  end

  def callback  
    response = Instagram.get_access_token(params[:code], :redirect_uri => CALLBACK_URL)
    session[:access_token] = response.access_token
    if session[:access_token]
      flash[:notice] = "You have logged in successfully."
      redirect_to root_path
    else
       flash[:notice] = "There was a problem, please try login again..!!"
    end
  end

  def logout
    reset_session
    flash[:notice] = "You have logged out successfully."
    redirect_to root_path
  end

  private
  def create_instagram_client
    @client = Instagram.client(access_token: session[:access_token]) unless session[:access_token].blank?
  end
end
