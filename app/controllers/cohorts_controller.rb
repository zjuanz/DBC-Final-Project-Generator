class CohortsController < ApplicationController
  before_action :authenticate_admin!

	def index
		@cohorts = Cohort.all
	end

	def new
		@cohort = Cohort.new
	end

	def create
		@cohort = Cohort.new(cohort_params)
		if @cohort.save
			redirect_to cohort_path(@cohort)
		else
			render 'new'
		end
	end

	def show
		find_cohort
	end

	def edit
		find_cohort
	end

	def update
		find_cohort
		if @cohort.update(cohort_params)
			redirect_to @cohort
		else
			render 'edit'
		end
	end

	def destroy
		find_cohort
		@cohort.destroy
		redirect_to cohorts_path
	end

	private
		def cohort_params
			params.require(:cohort).permit(:name, :active, :pitch_limit, :vote_limit, :pitch_start, :vote_start, :vote_end, :stage_id)
		end

		def find_cohort
			@cohort = Cohort.find(params[:id])
		end
end


