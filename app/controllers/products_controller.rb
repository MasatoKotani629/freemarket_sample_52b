class ProductsController < ApplicationController
  def index
    @products = Product.order("created_at DESC").limit(8)
  end
  def show
    @products = Product.order("created_at DESC").limit(6)
    @product = Product.find(params[:id])
    @user = @product.user
  end
  def new
  end
  def create
  end
  def update
  end
  def edit
  end
  def destroy
  end
end
