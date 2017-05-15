class RemoveNullFromTeams < ActiveRecord::Migration[5.0]
  def change
    change_column :teams, :student_id, :integer, :default => nil, :null => true
    change_column :teams, :pitch_id, :integer, :default => nil, :null => true
  end
end
