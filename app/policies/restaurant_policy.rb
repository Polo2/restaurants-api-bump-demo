class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def edit?
    user == record.user
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end
end
