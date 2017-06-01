class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.string :video_pitch2
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
