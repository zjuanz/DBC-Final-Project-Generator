class RoundsController < ApplicationController
  def index
    @cohorts = Cohort.active
  end

  def create
    if round
  end
end
