class ConnectsController < ApplicationController

  before_action :authenticate_user!

  def index
    @relationships = Relationship.where(user_id: current_user.id)
    @products = Product.all.page params[:page]
    @videos = Video.all.page(params[:page])
    @list = []
  end

end
