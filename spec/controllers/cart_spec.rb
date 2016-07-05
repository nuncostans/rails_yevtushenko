require 'rails_helper'

describe CartsController do
  it 'show cart' do
    get :show
    expect(assigns[:cart]).to be_nil
  end
end



