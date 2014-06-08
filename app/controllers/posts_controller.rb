class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @new_post = Post.new
  end

  def new
    @new_post = Post.new
  end

  def create
    p params
    Post.create(post_params)
    redirect_to root_path
  end

  private
  def post_params
      params.require(:post).permit(:title, :content, :parent_id)
  end
end
