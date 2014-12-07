class VotesController < ApplicationController

  def create
    @vote = Vote.new(user_id: current_user.id, product_id: params[:product_id])
    @vote.save
    @votes = Vote.all
    @product = Product.find_by(id: @vote.product_id)
    @product.likes += 1
    @product.save
  end

  def destroy
    @vote = Vote.find_by(user_id: params[:user_id], product_id: params[:product_id])
    @product = Product.find_by(id: @vote.product_id)
    @product.likes -= 1
    @product.save
    @vote.delete
  end

end
