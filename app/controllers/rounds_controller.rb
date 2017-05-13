class RoundsController < ApplicationController
  def index
    @cohorts = Cohort.active
  end

  def create
    @cohort = Cohort.find(params[:cohort_id])
    if params[:round_status] == 1
      new_round(@cohort, params[:pitch_ids])
      redirect_to 
    else
      # NEW TEAMS
    end
  end


  private

  def new_round(cohort, pitch_ids)
    pitch_ids.each do |pitch_id|
      pitch = Pitch.find(pitch_id)
      pitch.round_id += 1
      pitch.save
    end
    @cohort.stage_id += 1
  end
end
