class CreateCapitans < ActiveRecord::Migration
  def change
    create_table :capitans do |t|
      t.string :nombre
      t.string :departamento
      t.string :funcion
      t.string :plata
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
