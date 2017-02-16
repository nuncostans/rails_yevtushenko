require 'rails_helper'

RSpec.describe UserController, type: :controller do
  before :each do
    @user = User.create(email: 'bob@bob.com', password: '2314523', role: 'admin')
    sign_in @user
  end

  it 'should not create new user' do
    post :create, user: { email: 'bob@bob.com', password: '2314523' }
    expect(assigns[:user]).to be_nil
    expect(User.where(email: 'bob@bob.com').first).to be_nil
  end
end
