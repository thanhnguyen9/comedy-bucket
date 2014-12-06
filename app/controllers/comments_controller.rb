class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(params_comment)
    if @comment.save
      redirect_to product_path(id: @comment.product_id)
    else
      render :new
    end
  end

  def edit
  end

  private

  def params_comment
    params.require(:comment).permit(:post, :user_id, :product_id)
  end
end
