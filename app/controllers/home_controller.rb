class HomeController < ApplicationController
  def top
    @blogs = Blog.order("created_at DESC").limit(3)
    @artists = Artist.all
  end
  
  def about
  end
end
