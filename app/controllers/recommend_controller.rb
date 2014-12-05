class RecommendController < ApplicationController

  before_action :authenticate_user!

  def index
    @products = Product.all
    @videos = Video.all.page(params[:page])
    @a = []
  end
end
