class RelationshipsController < ApplicationController

  def show
    @relationship = Relationship.find(params[:id])
  end

  def create
    @relationship = Relationship.new(user_id: current_user.id, friend_id: params[:friend_id])
    @relationship.save
    @user = @relationship.user
  end

  def destroy
    @relationship = Relationship.find(params[:id])
    @user = User.find_by(id: @relationship.user_id)
    @relationship.delete
  end

end
