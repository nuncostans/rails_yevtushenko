class CartsController < ApplicationController
  
  def show
    @cart = Cart.find(session[:cart_id])
  end
  
  def add_to_cart
   @cart = Cart.find(session[:cart_id]).products << Product.find(params[:product_id])
  end
  
end
