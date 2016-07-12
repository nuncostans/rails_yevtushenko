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
    redirect_to products_path
    OrderMailer.order_email(params[:email]).deliver_later
    flash[:success] = t('order_created')
  end
  
  private

  def cart_find
    @products_in_cart = Cart.includes(:products).find(session[:cart_id]).products
  end
  
end
