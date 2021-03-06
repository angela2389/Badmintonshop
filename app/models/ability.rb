class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    # Can READ anything
    can :read, Category
    can :read, Product

    if user.is_admin?
      can :manage, :all
      can :access, :rails_admin
      can :dashboard
    elsif user.persisted? # in db, so logged in
      # Can MANAGE (create, read, update, destroy, etc.) own Post
      can :read, Order, user: user
      can :read, Orderitem, user: user
      can :update, Order, user: user
      can :create, Order, user: user
      can :create, Orderitem, user: user
    end
  end
end
