require 'rails_helper'

describe CartsController do

  it 'assigns @cart variadle' do
    get :show
    expect(assigns[:cart]).not_to be_nil
  end

end
