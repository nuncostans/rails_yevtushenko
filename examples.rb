# Generate Model ang migration 
rails g migration Product name:string description:text price:float 

# Average price of products
Product.average(:price)

# total sum of all products
Product.sum(:price)

# highest price of products
Product.maximum(:price)

# lowest price of products
Product.minimum(:price)

# Select product/products named 'TV'
Product.where(name:'TV')

# Select product/products with price low then 100
Product.where('price < ?', 100)
