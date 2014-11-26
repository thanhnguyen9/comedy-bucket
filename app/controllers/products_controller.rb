class ProductsController < ApplicationController

  before_action :authenticate_user!

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = current_user.products.new
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
    if @product.update(params_product)
      redirect_to products_path, notice: "Updated"
    else
      render :edit
    end
  end

  def destroy
      @product = Product.find(params[:id])
      @product.delete
      redirect_to products_path
  end

  private

  def params_product
    params.require(:product).permit(:url, :info, :user_id)
  end
end
