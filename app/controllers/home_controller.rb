class HomeController < ApplicationController
  before_filter :create_instagram_client, only: :media_feed

  def index   
  end

  def connect
    puts CALLBACK_URL 
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
      redirect_to user_media_feed_path
    else
       flash[:notice] = "There was a problem, please try login again..!!"
    end
  end

  def logout
    reset_session
    flash[:notice] = "You have logged out successfully."
    redirect_to root_path
  end
  
  def media_feed    
    flash[:notice] = "You have logged in successfully."
   redirect_to root_path
  end

  private
  def create_instagram_client
    @client = Instagram.client(access_token: session[:access_token])
  end
end
