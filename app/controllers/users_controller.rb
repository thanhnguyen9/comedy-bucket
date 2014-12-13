class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @products = Product.where(:user_id => @user.id)
    @videos = Video.all.page(params[:page])
    @relationship = Relationship.find_by(user_id: current_user.id, friend_id: @user.id)
  end
end
