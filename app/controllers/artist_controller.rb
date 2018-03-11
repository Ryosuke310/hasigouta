class ArtistController < ApplicationController
  
  
  def new
    @artist = Artist.new
  end
  def create
     @artist = Artist.new(
      artist_name: params[:artist_name],
      mage: params[:image],
      frequency_place: params[:frequency_place],
      twitter_id: params[:twitter_id],
      hp_url: params[:hp_url],
      message: params[:message]
      )
    if @artist.save
      session[:artist_id] = @artist.id
      flash[:notice] = "ユーザ登録が完了しました。"
      redirect_to("/")
    else
      render("artist/new")
    end
  end
  def show
    @artist = Artist.find_by(id: params[:id])
  end
  
end
