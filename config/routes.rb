Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users,
             controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
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
  #resources :galleries
  #resources :pictures
end
