require "rails_helper"

feature "creating a pitch" do
  scenario "the user visits pitches page" do
    visit '/pitches'
    click_link("New pitch")
  end
end

