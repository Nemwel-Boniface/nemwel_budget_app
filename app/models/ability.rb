# Service to download ftp file from the server
class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, User

    return unless user.present?

    can :manage, [Group, Entity], user_id: User.id
  end
end
