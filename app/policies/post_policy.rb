class PostPolicy < ApplicationPolicy
    attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    true
  end

  def show?
    @user.is_admin?
  end


  def create?
    @user.is_admin?
  end

  def new?
    create?
  end

  def update?
    @user.is_admin?
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
      @user.is_admin? ? scope.all : [scope.first]
    end

    private

    attr_reader :user, :scope
  end
end