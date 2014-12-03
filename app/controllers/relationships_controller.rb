class RelationshipsController < ApplicationController

  def create
    @relationship = Relationship.new(user_id: current_user.id, friend_id: params[:friend_id])
    @relationship.save
    redirect_to recommend_index_path, notice: "Successfully Subscribed"
  end

  def destroy
    @relationship = Relationship.where(:user_id => params[:user_id], :friend_id => params[:friend_id]).first
    @relationship.delete
    redirect_to recommend_index_path, notice: "Successfully Unsubscribe"
  end

end
