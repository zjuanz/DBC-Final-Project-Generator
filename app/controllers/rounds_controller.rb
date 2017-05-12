class RoundsController < ApplicationController
  def index
    @cohorts = Cohort.active
  end
end
