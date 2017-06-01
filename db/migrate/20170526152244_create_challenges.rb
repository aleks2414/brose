class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :definicion
      t.string :resumen
      t.string :reto_innovacion
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
