class RecommendController < ApplicationController
  def index
    @products = Product.all
  end
end
