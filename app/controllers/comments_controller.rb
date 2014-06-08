class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @post_id = params[:post_id]
  end

  def create
    params = comment_params.merge({user_id: current_user.id})
    @comment = Comment.new(params)
    if @comment.save
      redirect_to root_path
    else
      redirect_to new_post_comment_path
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id)
  end

end