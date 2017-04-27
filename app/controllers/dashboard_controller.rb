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
  end

  def ventajas_competitivas
  end

  def concepto_validado
  end

  def propuesta_de_valor
  end

  def prototipado
  end
end
