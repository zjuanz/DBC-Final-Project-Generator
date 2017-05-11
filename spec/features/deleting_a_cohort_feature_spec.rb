require "rails_helper"

feature "deleting a cohort" do
  scenario "the user visits homepage and deletes a recent cohort" do
    cohort = Cohort.create!(name: "Fox", active: "true", pitch_limit: 2, pitch_start: "2017-05-10", vote_start: "2017-05-11", vote_limit: 3, vote_end: "2017-05-12")

    visit cohort_path(cohort.id)

    within(".cohort") do
      expect(page).to have_content cohort.name
      click_link("Delete")

      # NOT SURE HOW TO TEST JS ALERTS
      # page.evaluate_script('window.confirm = function() { return true; }')
    end

    expect(page).to have_current_path cohorts_path

    within(".cohorts") do
      expect(page).not_to have_content cohort.name
    end
  end
end
