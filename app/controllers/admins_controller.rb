class AdminsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @cohorts = Cohort.active
  end
end
