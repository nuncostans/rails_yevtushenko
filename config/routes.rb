Rails.application.routes.draw do

  resources :products

  resource :cart, only: :show
 
  post '/carts/add_product', to: 'carts#add', as: 'add_to_cart'

  resources :accounts

  root 'products#index'
  
end
