class TeamsController < ApplicationController
  def new
    @cohort = Cohort.find(flash[:id])
    @pitches = @cohort.current_pitches
    @votes = @pitches.each {|pitch| pitch.votes}
  end

end