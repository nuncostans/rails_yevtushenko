class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :set_current_cart

  protect_from_forgery with: :exception

  private

  def set_current_cart
    session[:cart_id] ||= Cart.create.id
  end
  
  def product_list_partial_name
    if Product.all.size == 0
      return 'empty'
    else
     return 'list'
    end
  end
  
end
