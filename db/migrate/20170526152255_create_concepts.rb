class CreateConcepts < ActiveRecord::Migration
  def change
    create_table :concepts do |t|
      t.string :entrevistas
      t.string :propuesta
      t.string :boceto2
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
