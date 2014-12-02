class RecommendController < ApplicationController
  def index
    @products = Product.all
    @a = []
  end
end
