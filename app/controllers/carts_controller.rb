class CartsController < ApplicationController
  
  before_action :cart_find
  
  def show
    @cart = cart_find.products
  end
  
  def add
    @cart = cart_find.products << Product.find(params[:product_id])
  end

  private

  def cart_find
    @cart = Cart.includes(:products).find(session[:cart_id])
  end
  
end
