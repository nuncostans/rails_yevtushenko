require 'rails_helper'

describe AccountsController do
  before :each do
    @user = User.create(email: 'bob@bob.com', password: '2314523', role: 'admin')
    sign_in @user
  end

  it 'assigns @accounts variable' do
    acc = create(:account)
    get :index
    expect(assigns[:accounts]).not_to be_nil
    expect(assigns[:accounts].first.name).to eql(acc.name)
    expect(assigns[:accounts].first.age).to eql(acc.age)
  end

  it 'assigns @account variable' do
    get :new
    expect(assigns[:account]).not_to be_nil
  end

  it 'should create new account' do
    post :create, account: { name: 'Vasyl Pupkinenko', age: 99 }
    expect(assigns[:account]).not_to be_nil
    expect(Account.where(name: 'Vasyl Pupkinenko').first).not_to be_nil
  end

  it 'should not create new account' do
    post :create, account: { name: 'ololo', age: 1234 }
    expect(assigns[:account]).not_to be_nil
    expect(assigns[:account].errors.size).to eql(2)
    expect(assigns[:account].errors.messages[:name]).not_to be_nil
    expect(assigns[:account].errors.messages[:age]).not_to be_nil
    expect(Account.where(name: 'ololo').first).to be_nil
  end

  it 'should update account and redirects to account url' do
    account = create(:account)
    put :update, id: account.id, account: { name: 'Bob bob bob', age: 33 }
    expect(response).to be_redirect
  end

  it 'should not update account and render new' do
    account = create(:account)
    put :update, id: account.id, account: { name: '', age: -33 }
    expect(response).to render_template :new
  end

  it 'should delete account and redirects to account url' do
    account = create(:account)
    delete :destroy, id: account.id, account: { name: 'Bob bob bob', age: 33 }
    expect(response).to redirect_to accounts_url
  end

  it 'should find all accounts like name' do
    9.times do |i|
      post :create, account: { name: "Vasyl Pupkinenko#{i}", age: 34 }
    end
    get :index
    expect(assigns[:accounts].size).to eql(9)
    expect(Account.all.size).to eql(9)
  end
end
