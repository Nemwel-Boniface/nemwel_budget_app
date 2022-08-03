# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, User

    return unless user.present?

    can :manage, [Group, Entity], user_id: User.id
  end
end
