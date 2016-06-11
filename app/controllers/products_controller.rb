class ProductsController < ApplicationController
  before_action :initialize_session, before: :index
  
  def index
    @products =  Product.all
    session[:view_count] += 1
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    respond_to do |format| 
      if @product.save
        format.html { redirect_to products_path, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end

  def initialize_session
    session[:view_count] ||= 0
  end
end
