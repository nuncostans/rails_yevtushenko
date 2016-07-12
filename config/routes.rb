Rails.application.routes.draw do

  resources :products

  resource :cart, only: :show do
    collection do
          get 'order'
    end
  end
    
  post '/carts/add_product', to: 'carts#add', as: 'add_to_cart'
  
  match '/send_mail', to: 'carts#send_mail', via: 'post'
  resources :accounts
  root 'products#index'
  
end
