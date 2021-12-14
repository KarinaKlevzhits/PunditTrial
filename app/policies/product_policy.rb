class ProductPolicy < ApplicationPolicy
    attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    true
  end

  def show?
    @user.status
  end

  def create?
    @user.status
  end

  def new?
    create?
  end

  def update?
    @user.status

  end

  def edit?
    update?
  end

  def destroy?
    @user.status
  end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end

    private

    attr_reader :user, :scope
  end
end