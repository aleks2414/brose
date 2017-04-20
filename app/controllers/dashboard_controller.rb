class DashboardController < ApplicationController
  def index

  end

  def proyecto
    @projects = Project.all
    @projecta = current_team.projects
    @project = Project.new
  end

  def capitan
  end

  def equipo
  end

  def mentor
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
