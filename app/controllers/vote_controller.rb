class VoteController < ApplicationController
	def create
		vote_value = []
		params[:pitches].each do |k,v|
			vote_value << v
		end
		if vote_value.uniq == vote_value
			if params[:pitches].length < @cohort.vote_limit
				params[:pitches].each do |k,v|
					pitch = Pitch.find_by(name: k)
					Vote.create(vote: v, pitch_id: pitch.id, student_id: current_student.id)
				end
				redirect_to students_path
			else
				redirect_to students_path 						#error="not selected all votes"
			end
		else
			redirect_to students_path								#error="use each number once"
		end
	end
end