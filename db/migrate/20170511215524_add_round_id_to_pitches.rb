class AddRoundIdToPitches < ActiveRecord::Migration[5.0]
  def change
    add_column :pitches, :round_id, :integer
  end
end
