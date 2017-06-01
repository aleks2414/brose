class DashboardController < ApplicationController
  def index

  end

  def proyecto
    @teams = Team.where(admin: false).order("id asc")
    @captains = Capitan.all.order("team_id asc")
    @players = Player.all.order("team_id asc")
    
    @projects = Project.all.order("team_id asc")
    @projecta = current_team.projects
    @project = Project.new
  end

  def capitan
    @captains = Capitan.all.order("team_id asc")
    @capitana  = current_team.capitans
    @capitan = Capitan.new
  end

  def equipo
    @players = Player.all.order("team_id asc")
    @playera  = current_team.players
    @player = Player.new
  end


  def reto
    @challenges = Challenge.all.order("team_id asc")
    @challengea  = current_team.challenges
    @challenge = Challenge.new
  end

  def ventajas_competitivas
    @advantages = Advantage.all.order("team_id asc")
    @advantagea  = current_team.advantages
    @advantage = Advantage.new
  end

  def concepto_validado
    @concepts = Concept.all.order("team_id asc")
    @concepta  = current_team.concepts
    @concept = Concept.new
  end

  def propuesta_de_valor
    @propositions = Proposition.all.order("team_id asc")
    @propositiona  = current_team.propositions
    @proposition = Proposition.new
  end

  def prototipado
    @prototypes = Prototype.all.order("team_id asc")
    @prototypea  = current_team.prototypes
    @prototype = Prototype.new
  end
end
