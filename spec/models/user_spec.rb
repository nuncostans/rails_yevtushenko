require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) {User.new}
  it { expect(user).to validate_presence_of(:email) }
  it { expect(user).to validate_presence_of(:password) }
end
