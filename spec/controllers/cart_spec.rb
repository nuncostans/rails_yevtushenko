require 'rails_helper'

describe CartsController do
  it 'show cart' do
    get :show
    expect(assigns[:cart]).to be_nil
  end

  it 'add product to cart' do
    product = create(:product)
    post :add, product_id: cart.id 
  end
end



