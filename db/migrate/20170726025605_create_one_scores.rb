class CreateOneScores < ActiveRecord::Migration
  def change
    create_table :one_scores do |t|
      t.references :team, index: true, foreign_key: true
      t.integer :r1, default: 0
      t.integer :r2, default: 0
      t.integer :r3, default: 0
      t.integer :r4, default: 0
      t.integer :r5, default: 0
      t.integer :r6, default: 0

      t.timestamps null: false
    end
  end
end
