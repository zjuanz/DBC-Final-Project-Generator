class CreatePitches < ActiveRecord::Migration[5.0]
  def change
    create_table :pitches do |t|
      t.string :name
      t.string :description
      t.integer :student_id

      t.timestamps
    end
  end
end
