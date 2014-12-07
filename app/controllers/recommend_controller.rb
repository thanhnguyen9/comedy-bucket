class RecommendController < ApplicationController

  before_action :authenticate_user!

  def index
    @products = Product.order("likes DESC")
    @videos = Video.all.page(params[:page])
    @list = []
  end
end
