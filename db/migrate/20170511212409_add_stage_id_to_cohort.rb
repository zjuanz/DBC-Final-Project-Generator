class AddStageIdToCohort < ActiveRecord::Migration[5.0]
  def change
    add_column :cohorts, :stage_id, :integer
  end
end
