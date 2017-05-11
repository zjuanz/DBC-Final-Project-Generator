class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :vote
      t.integer :pitch_id
      t.integer :student_id

      t.timestamps
    end
  end
end
