class CreateFirstReviews < ActiveRecord::Migration
  def change
    create_table :first_reviews do |t|
      t.references :challenge, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true
      t.integer :q1, default: 0
      t.integer :q2, default: 0
      t.integer :q3, default: 0
      t.integer :q4, default: 0
      t.integer :q5, default: 0
      t.integer :q6, default: 0

      t.timestamps null: false
    end
  end
end
