class CreateAdvantages < ActiveRecord::Migration
  def change
    create_table :advantages do |t|
      t.string :boceto
      t.string :infografia
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
