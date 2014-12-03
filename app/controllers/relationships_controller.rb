class RelationshipsController < ApplicationController

  def create
    @relationship = Relationship.new(params_relationship)
    @relationship.save
    redirect_to recommend_index_path, notice: "Successfully Subcribed"
  end

  def destroy
    @relationship = Relationship.find(params[:id])
    @relationship.delete
    redirect_to recommend_index_path, notice: "Successfully Unsubcribe"
  end

  private

  def params_relationship
    params.require(:relationship).permit(:user_id, :friend_id)
  end
end
