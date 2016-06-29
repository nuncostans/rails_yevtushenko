require 'rails_helper'

describe Account, type: :model do
  let(:account) { Account.new }

  it { expect(account).to validate_presence_of(:name) }
  it { expect(account).to validate_presence_of(:age) }
  it { should have_one(:cart) }

end
