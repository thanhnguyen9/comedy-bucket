class ConnectsController < ApplicationController

  def index
    @relationships = Relationship.where(user_id: current_user.id)
    @products = Product.all
    @videos = Video.all.page(params[:page])
  end

end
