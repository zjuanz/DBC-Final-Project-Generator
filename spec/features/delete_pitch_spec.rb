require "rails_helper"

feature "delete a pitch" do
  background do
    Pitch.create(student_id: 1, name: "pitch name", description: "pitch description")
  end

  scenario "the user visits pitches page" do
    visit '/pitches'
    pitch = Pitch.last
    link = find_link("delete", href: "/pitches/#{pitch.id}")
    click_link("delete")
     expect(page).not_to have_link(link)
  end
end