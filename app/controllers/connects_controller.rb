class ConnectsController < ApplicationController

  def index
    @relationships = Relationship.where(user_id: current_user.id)
    @products = Product.all
  end

end
