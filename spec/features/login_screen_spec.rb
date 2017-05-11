require 'rails_helper'

feature "login screen" do
  scenario "user sees login window when they first visit site" do
    visit "/"
    expect(page).to have_content("FPSelect")
    expect(page).to have_content("GitHub")
    expect(page).to have_content("License")
    expect(page).to have_content("Ben Martin")
    expect(page).to have_content("Sign in")
    expect(page).to have_content("Email address")
    expect(page).to have_content("Password")
    expect(page).to have_content("Remember me")
  end
end

