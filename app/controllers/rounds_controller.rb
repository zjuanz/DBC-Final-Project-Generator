class RoundsController < ApplicationController
  def index
    @cohorts = Cohort.active
  end

  def create
    @cohort = Cohort.find(params[:cohort_id])
    if params[:round_status] == 1
      # NEW ROUND
    else
      # NEW TEAMS
    end
  end
end
