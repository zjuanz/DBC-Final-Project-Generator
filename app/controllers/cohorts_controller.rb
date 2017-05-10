class CohortsController < ApplicationController
	def index
	end

	def new
	end

	def create
		@cohort = Cohort.new(cohort_params)
		if @cohort.save
			redirect_to cohort_path
		else
			render 'new'
		end
	end

	private
		def cohort_params
			params.require(:cohorts).permit(:name, :active, :pitch_limit, :vote_limit, :pitch_start, :vote_start, :vote_end)
		end
end
