class CreateFifthReviews < ActiveRecord::Migration
  def change
    create_table :fifth_reviews do |t|
      t.references :prototype, index: true, foreign_key: true
      t.integer :q16
      t.integer :q17
      t.integer :q18
      t.integer :q19
      t.integer :q20

      t.timestamps null: false
    end
  end
end
