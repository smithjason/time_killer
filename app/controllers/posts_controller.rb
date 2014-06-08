class PostsController < ApplicationController

  def index
    @questions = Post.all_questions
  end

  def show
    @post = Post.find(params[:id])
    @new_post = Post.new
  end

  def new
    @new_post = Post.new
  end

  def create
    params = post_params.merge({user_id: current_user.id})
    @post = Post.new(params)
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
    params.require(:post).permit(:title, :content, :parent_id, :user_id)
  end
end
