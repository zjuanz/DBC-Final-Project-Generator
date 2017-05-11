require 'rails_helper'

RSpec.describe "application/login.html.erb" do
  it "user sees login window when they first visit site" do
    render
    expect(rendered).to have_content("Sign in")
    expect(rendered).to have_content("Email address")
    expect(rendered).to have_content("Password")
    expect(rendered).to have_content("Remember me")
  end
end
