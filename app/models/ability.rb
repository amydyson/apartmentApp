class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
      # if no user logged in, use a dummy user, see later
      user = User.new
    end
    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :manager
      can :manage, Apartment
    elsif user.has_role? :renter
      can :read, :all
    end
  end
end
