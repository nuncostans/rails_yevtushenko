module ProductsHelper

  def product_list_partial_name
    @products.empty? ? 'empty' : 'list'
  end
  
end
