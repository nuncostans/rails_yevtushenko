class CartsController < ApplicationController
  
  
  def index
    :set_current_cart
  end
  
  def show
    @cart = Cart.find(params[:id])
  end
  
  def add_to_cart
   @cart = Cart.find(session[:cart_id]).products << Product.find(params[:product_id])
  end
  
end
