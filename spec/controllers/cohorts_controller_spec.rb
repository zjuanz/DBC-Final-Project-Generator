require 'rails_helper'

describe CohortsController do 
	let!(:cohort) { Cohort.create(name: "Fox", active: "true", pitch_limit: 2, pitch_start: "2017-05-10", vote_start: "2017-05-11", vote_limit: 3, vote_end: "2017-05-12")}

	describe 'GET #index' do
		it 'responds with status code 200' do
			expect(response).to have_http_status 200
		end

		it 'assigns the cohort as @cohort' do
			get :index
			expect(assigns(:cohorts)).to eq([cohort])
		end

		it 'renders the :index template' do
			get :index
			expect(response).to render_template(:index)
		end
	end
end



# RSpec.describe CohortsController, type: :controller do