module ProductsHelper


  def alert_helper
  end

  def product_list_partial_name
   if Product.all.size == 0
     return 'empty'
   else
     return 'list'
   end
  end
  
end
