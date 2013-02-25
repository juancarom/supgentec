class Ability
  include CanCan::Ability

def initialize(user)
    user ||= User.new # guest user
    if user.role? :admin
      can :manage, :all
    elsif user.role? :organizacion
      #can :read, :all

      #Organizacion
      can :read, [Organizacion]

      #Curso
      can :create, [Curso]
      can :read, [Curso]
      can :update, [Curso]
      can :destroy, [Curso]
     
      can :update, User do |user2|
        user2.try(:id) == user.id
      end
    end
end

 # def initialize(user)
  #  user.roles.each { |role|
   #   role.permissions.each { |permission|
    #    can permission.conduct.to_sym, permission.regulator.constantize
     # }
   # }
#  end
end

