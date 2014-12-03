class RelationshipsController < ApplicationController

  def create
    @relationship = Relationship.new(params_relationship)
    redirect_to recommend_index_path, notice: "Successfully Subcribed"
  end

  private

  def params_relationship
    params.require(:relationship).permit(:user_id, :friend_id)
  end
end
