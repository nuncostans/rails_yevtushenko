class CartsController < ApplicationController
  
  before_action :cart_find
  
  def show
  end
  
  def add
    @products_in_cart << Product.find(params[:product_id])
  end
  
  def order
  end

  def send_mail
    OrderMailer.order_email(params[:email]).deliver_later
redirect_to products_path
  end
  
  private

  def cart_find
    @products_in_cart = Cart.includes(:products).find(session[:cart_id]).products
  end
  
end
