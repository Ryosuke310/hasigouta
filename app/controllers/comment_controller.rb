class CommentController < ApplicationController
  def create
    @blog = Blog.find_by(id: params[:blog_id])
    @comment = Comment.new(
      content: params[:content],
      blog_id: @blog.id,
      user_id: current_user.id)
    @comment.save
    redirect_to("/blog/#{@blog.id}")
  end
end
