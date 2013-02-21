class Ability
  include CanCan::Ability

user ||= User.new # guest user
    if user.role? :admin
      can :manage, :all
    elsif user.role? :organizcion
      can :read, :all
     
      can :update, User do |user2|
        user2.try(:id) == user.id
      end



 # def initialize(user)
  #  user.roles.each { |role|
   #   role.permissions.each { |permission|
    #    can permission.conduct.to_sym, permission.regulator.constantize
     # }
   # }
#  end
end

