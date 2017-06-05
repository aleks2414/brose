class CreateThirdReviews < ActiveRecord::Migration
  def change
    create_table :third_reviews do |t|
      t.references :concept, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true
      t.integer :q10
      t.integer :q11
      t.integer :q12

      t.timestamps null: false
    end
  end
end
