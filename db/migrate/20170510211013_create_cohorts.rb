class CreateCohorts < ActiveRecord::Migration[5.0]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.integer :pitch_limit
      t.integer :vote_limit
      t.date :pitch_start
      t.date :vote_start
      t.date :vote_end
      t.boolean :active

      t.timestamps
    end
  end
end
