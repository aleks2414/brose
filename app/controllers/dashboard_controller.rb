class DashboardController < ApplicationController
  def index

  end

  def proyecto
    @projects = Project.all
    @projecta = current_team.projects
    @project = Project.new
  end

  def capitan
    @captains = Capitan.all
    @capitana  = current_team.capitans
    @capitan = Capitan.new
  end

  def equipo
    @players = Player.all
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
