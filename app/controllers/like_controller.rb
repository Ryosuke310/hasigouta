class LikeController < ApplicationController
  
  def create
    @like = Like.create(
      user_id: current_user.id,
      blog_id: params[:blog_id]
      )
     @like.save
     redirect_to("/")
  end
  
  def destroy
  @like = Like.find_by(
    user_id: current_user.id,
    blog_id: params[:blog_id]
    )
  @like.destroy
  redirect_to("/")
  end
  
end
