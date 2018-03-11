class UserController < ApplicationController
  def like
    @user = User.fond_by(id: params[:id])
    @likes = Like.where(user_id: @user.id)
  end
end
