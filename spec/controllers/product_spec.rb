require 'rails_helper'

describe ProductsController do

  it 'assigns @products variable' do
    product = create(:product)
    get :index
    expect(assigns[:products]).not_to be_nil
    expect(assigns[:products].first.name).to eql(product.name)
    expect(assigns[:products].first.description).to eql(product.description)
    expect(assigns[:products].first.price).to eql(product.price)
  end

  it 'assigns @product variable' do
    get :new
    expect(assigns[:product]).not_to be_nil
  end

  it 'should create new product' do
    post :create, product: { name:'Tv', description: 'Tv-set', price: 3456 }
    expect(assigns[:product]).not_to be_nil
    expect(Product.where(name:'Tv', description:'Tv-set'))
  end

  it 'should show product' do
    product = create(:product)
    get :show, id: product.id
    expect(assigns[:product]).not_to be_nil
  end
  
  it 'should find product by price' do
    post :create, product: {name:'Tv', description: 'Tv-set', price: 3456}
    get :index
    expect(assigns[:product].name).to eql('Tv')
  end

  it 'should not create new product' do
    post :create, product: { name:'', description:'',price: -1234}
    expect(assigns[:product]).not_to be_nil
    expect(assigns[:product].errors.size).to eql(3)
    expect(assigns[:product].errors.messages[:name]).not_to be_nil
    expect(assigns[:product].errors.messages[:description]).not_to be_nil
    expect(assigns[:product].errors.messages[:price]).not_to be_nil
    expect(Product.where(name:'').first).to be_nil
  end
  
  it 'should update product and redirects' do
    product = create(:product)
    put :update, id: product.id, product: {name:'Tvv', description:'Tv-set', price: 234}
    expect(response).to be_redirect
  end

  it 'should not update product and render edit' do
    product = create(:product)
    put :update,id: product.id, product: {name:'', description:'', price: 122}
    expect(response).to render_template :edit
  end

  it 'should delete product and redirects to products url' do
    product = create(:product)
    delete :destroy, id: product.id, product: {name:'Tvv', description:'Tv-set', price: 234}
    expect(response).to redirect_to root_url
  end
  
end
