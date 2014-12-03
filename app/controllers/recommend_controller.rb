class RecommendController < ApplicationController

  before_action :authenticate_user!
  
  def index
    @products = Product.all
    @a = []
  end
end
