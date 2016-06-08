class CommentsController < ApplicationController
  
  def new
  @comment = Comment.new
  end

  def create
  @comment = Comment.new(comment_params)
  @comment.user_id = current.user_id
  @comment.save 
  redirect_to :back
  end

  private
  def comment_params
  params.require(:comment).permit(:id, :content, :recipe_id, :user_id)
  end



end
