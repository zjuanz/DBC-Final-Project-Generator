require "rails_helper"

feature "creating a pitch" do
  scenario "the user visits pitches page" do
    visit '/pitches/new'
    fill_in('pitch[name]', with: 'test pitch')
    fill_in('pitch[description]', with: '#h1 header')
    click_button("Save Pitch")
  end
end

