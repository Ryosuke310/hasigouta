class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def forbid_login_user
    if user_signed_in?
      flash[:notice] = "すでにユーザとしてログインしています。"
      redirect_to("/")
    end
  end

  def forbid_login_artist
    if artist_signed_in?
      flash[:notice] = "すでにアーティストとしてログインしています。"
      redirect_to("/")
    end
  end
end

