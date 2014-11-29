class CommentsController < ApplicationController

  def new
    @comment = comment.new
  end

  def create
    @comment = Comment.create(params_comment)
    if @comment.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
  end

  private

  def params_comment
    params.require(:comment).permit(:post, :user_id)
  end
end
