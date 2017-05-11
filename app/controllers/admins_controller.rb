class AdminsController < ApplicationController
  def index
    @cohorts = Cohort.all
  end
end
