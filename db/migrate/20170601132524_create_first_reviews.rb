class CreateFirstReviews < ActiveRecord::Migration
  def change
    create_table :first_reviews do |t|
      t.references :challenge, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true
      t.integer :q1
      t.integer :q2
      t.integer :q3
      t.integer :q4
      t.integer :q5
      t.integer :q6

      t.timestamps null: false
    end
  end
end
