class HomeController < ApplicationController
  def index
    @posts = Post.order("created_at DESC")
    @comment = Comment.new
  end

  
end
