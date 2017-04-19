class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :nombre_proyecto
      t.text :descripcion
      t.string :nombre_representante
      t.string :planta
      t.string :departamento
      t.string :funcion
      t.string :enfoque
      t.string :division
      t.boolean :terminos
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
