class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(params_comment)
    @comment.save
    @comments = Comment.order("created_at DESC")
    @product = Product.find_by(id: @comment.product_id)
  end

  def edit
  end

  private

  def params_comment
    params.require(:comment).permit(:post, :user_id, :product_id)
  end
end
