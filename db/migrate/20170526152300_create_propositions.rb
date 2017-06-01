class CreatePropositions < ActiveRecord::Migration
  def change
    create_table :propositions do |t|
      t.string :vpd
      t.string :video_pitch
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
