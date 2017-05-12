class VoteController < ApplicationController
	def create
		selected_pitches = []
		params[:votes].each do |k,v|
				selected_pitches << v
		end
		if selected_pitches.uniq == selected_pitches
			params[:votes].each do |k,v|
				Vote.create(vote: k.to_i, pitch_id: v.to_i, student_id: current_student.id, round_id: current_student.cohort.stage_id)
			end
		else
			@error = ["Cant choose the same pitch twice."]
		end

	end
end