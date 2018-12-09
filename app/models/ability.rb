class Ability
  include CanCan::Ability

  def initialize(agent)
    if agent
      if agent.category == 'voluntario'
        can :access, :rails_admin
        can :dashboard
        can :read, Event, status: :ativo
        can :manage, Address, agent_id: agent.id
      elsif agent.category == 'coordenador' || agent.category == 'tecnico'
        can :manage, :all
      end
    end
  end
end
