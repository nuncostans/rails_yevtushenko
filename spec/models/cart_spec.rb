require 'rails_helper'

RSpec.describe Cart, type: :model do
  let(:cart) {Cart.new}
  it {should belong_to(:account)}
end
