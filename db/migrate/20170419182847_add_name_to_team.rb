class AddNameToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :nombre, :string
    add_column :teams, :planta, :string
    add_column :teams, :departamento, :string
    add_column :teams, :funcion, :string
    add_column :teams, :enfoque, :string
    add_column :teams, :division, :string
  end
end
