#rails g migration Product name:string description:text price:float
#Product.average(:price)
#Product.all.sum(:price) 

p = [55.68, 9.99, 20.0, 13.0, 999.99, 88.99, 120.99, 66.0, 33.33, 99.98765].inject(0){ |n,m|n + m} 
puts p/10
