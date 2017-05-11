class VoteController < ApplicationController
	def create
		binding.pry
		if params[:pitches].length < 4
			params[:pitches].each do |p|
				pitch = Pitch.find_by(name: p[0])
				Vote.create(vote: p[1], pitch_id: pitch.id, student_id: current_student.id)
			end
			# redirect_to 							need to know whats the path is to go to the same page
		else
		end
	end
end