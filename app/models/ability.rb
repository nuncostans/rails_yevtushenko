class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all                   # allow everyone to read everything
    can :access, :rails_admin       # only allow admin users to access Rails Admin
    can :dashboard                  # allow access to dashboard

    if user && user.admin?
      if user.role :superadmin
        can :manage, :all             # allow superadmins to do anything
      elsif user.role :manager
        can :manage, [Account, Product]  # allow managers to do anything to products and users
      elsif user.role :sales
        can :update, Product, :hidden => false  # allow sales to only update visible products
      end
    end
  end
end
