require "rails_helper"

RSpec.describe Product, type: :model do

  let(:product) {Product.new}

  it { expect(product).to validate_presence_of(:name) }
  it { expect(product).to validate_presence_of(:description) }
  it { expect(product).to validate_presence_of(:price) }

end
