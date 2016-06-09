class Account < ActiveRecord::Base
  has_one :cart
end
