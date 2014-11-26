class ProductsController < ApplicationController

  before_action :authenticate_user!

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params_product)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product = Product.update(params_product)
    redirect_to products_path
  end

  def destroy
      @product = Product.find(params[:id])
      @product.delete
      redirect_to products_path
  end

  private

  def params_product
    params.require(:product).permit(:url, :info, :artist_id)
  end
end
