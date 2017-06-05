class CreateFourthReviews < ActiveRecord::Migration
  def change
    create_table :fourth_reviews do |t|
      t.references :proposition, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true
      t.integer :q13, default: 0
      t.integer :q14, default: 0
      t.integer :q15, default: 0

      t.timestamps null: false
    end
  end
end
