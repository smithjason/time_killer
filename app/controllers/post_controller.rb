class PostController < ApplicationController

  def index
    @posts = Posts.all
  end

  def show
    @posts = Post.find(params[:id])
  end
end
