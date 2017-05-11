require "rails_helper"

feature "update a pitch" do
  background do
    Pitch.create(student_id: 1, name: "pitch name", description: "pitch description")
  end

  scenario "the user visits update pitch page" do
    pitch = Pitch.last
    visit "/pitches/#{pitch.id}/edit"
    fill_in('pitch[name]', with: 'new test pitch')
    click_button("Save Pitch")
    visit "/pitches/#{pitch.id}"
    expect(page).to have_content("Pitch name: new test pitch")
  end
end