class CreateFifthReviews < ActiveRecord::Migration
  def change
    create_table :fifth_reviews do |t|
      t.references :prototype, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true
      t.integer :q16, default: 0
      t.integer :q17, default: 0
      t.integer :q18, default: 0
      t.integer :q19, default: 0
      t.integer :q20, default: 0

      t.timestamps null: false
    end
  end
end
