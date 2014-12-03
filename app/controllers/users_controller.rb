class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @products = Product.where(:user_id => @user.id)
    @relationship = current_user.relationships.new(:friend_id => @user.id)
    @subcribes = Relationship.all
  end
end
