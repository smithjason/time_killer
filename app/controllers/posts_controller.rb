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
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = 'Post created'
      redirect_to root_url
    else
      flash[:notice] = "Post creation failed"
      redirect_to new_post_path
    end
  end

  def create_answer
    @post = Post.new(post_params, params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :parent_id)
  end
end
