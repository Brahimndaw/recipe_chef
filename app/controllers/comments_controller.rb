class CommentsController < ApplicationController

  
  def new
  @comment = Comment.new
  end

  def create
  @comment = Comment.new(comment_params)
  @comment.user_id = current_user.id
  @comment.save 
  redirect_to recipe_path(@comment.recipe)
  end

  def edit 
  end

  private
  def comment_params
  params.require(:comment).permit(:id, :content, :recipe_id, :user_id)
  end



end
