class CreateSixScores < ActiveRecord::Migration
  def change
    create_table :six_scores do |t|
      t.references :team, index: true, foreign_key: true
      t.integer :r1, default: 0
      t.integer :r2, default: 0
      t.integer :r3, default: 0
      t.integer :r4, default: 0
      t.integer :r5, default: 0
      t.integer :r6, default: 0
      t.integer :r7, default: 0
      t.integer :r8, default: 0
      t.integer :r9, default: 0
      t.integer :r10, default: 0
      t.integer :r11, default: 0
      t.integer :r12, default: 0
      t.integer :r13, default: 0
      t.integer :r14, default: 0

      t.timestamps null: false
    end
  end
end
