class AdminsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @cohorts = Cohort.all
  end
end
