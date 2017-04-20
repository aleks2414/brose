class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :nombre
      t.string :departamento
      t.string :funcion
      t.string :planta
      t.string :work
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
