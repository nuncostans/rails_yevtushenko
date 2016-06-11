class Friendship < ActiveRecord::Base
  belongs_to :account
  belongs_to :friend, class_name: "Account"

  after_create :create_inverse, unless: :has_inverse?
  after_destroy :destroy_inverse, if: :has_inverse?

  def create_inverse
    self.class.create(inverse_match_options)
  end

  def destroy_inverse
    inverses.destroy_all
  end

  def has_inverse?
    self.class.exists?(inverse_match_options)
  end

  def inverses
    self.class.where(inverse_match_options)
  end
  
  def inverse_match_options
    {friend_id: account_id, account_id: friend_id }
  end
end
