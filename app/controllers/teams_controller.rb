class TeamsController < ApplicationController
  def new
    @cohort = Cohort.find(1)
    @pitches = @cohort.current_pitches
    @votes = {}
    a = []
    @pitches.each do |pitch|
      a << pitch.votes.select do |vote|
        vote.round_id == @cohort.stage_id
      end
      @votes[pitch] = a
    end
    binding.pry
  end
end
