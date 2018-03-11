class BlogController < ApplicationController
  def new
    
  end
  
  def create
    @blog = Blog.new(
      title: params[:title],
      content: params[:content],
      artist_id: current_artist.id
      )
    @blog.save
    redirect_to("/")
  end
  
  def show
    @blog = Blog.find_by(id:params[:id])
    @comments = @blog.comments.order(created_at: :desc)
    @artist = @blog.artist
  end
  

end
