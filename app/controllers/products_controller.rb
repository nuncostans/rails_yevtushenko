class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_product, only: [:show, :edit, :update, :destroy, :patch]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = 'Produt created!!!'
      redirect_to products_path
    else
      render 'new'
    end
  end

  def update
    if @product.update(product_params)
      flash[:info] = 'Product was successfully updated'
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    @product.destroy
    flash[:danger] = "You have destroyed product #{@product.name}"
    redirect_to products_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :photo)
  end
end
