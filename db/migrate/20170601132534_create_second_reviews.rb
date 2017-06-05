class CreateSecondReviews < ActiveRecord::Migration
  def change
    create_table :second_reviews do |t|
      t.references :advantage, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true
      t.integer :q7, default: 0
      t.integer :q8, default: 0
      t.integer :q9, default: 0

      t.timestamps null: false
    end
  end
end
