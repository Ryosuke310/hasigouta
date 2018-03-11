class EncourageController < ApplicationController
  def create
    @encourage = Encourage.new(
      user_id:current_user.id,
      artist_id:params[:artist_id]
      )
    @encourage.save
    redirect_to("/")
  end
  def destroy
    @encourage = Encourage.find_by(
      user_id:current_user.id,
      artist_id:params[:artist_id]
      )
    @encourage.destroy
    redirect_to("/")
  end
end
