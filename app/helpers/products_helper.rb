module ProductsHelper


  def alert_helper
  end

  def product_list_partial_name
    @products.empty? ? 'empty' : 'list'
  end
  
end
