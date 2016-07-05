require 'rails_helper'

RSpec.describe Cart, type: :model do
  let(:cart) {Cart.new}
  it {should belong_to(:account)}
  it {should have_many(:products)}
end
