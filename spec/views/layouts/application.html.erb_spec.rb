require 'rails_helper'

RSpec.describe "layouts/application.html.erb" do
  it "user sees layout" do
    render
    expect(rendered).to have_content("FPSelect")
    expect(rendered).to have_content("GitHub")
    expect(rendered).to have_content("License")
    expect(rendered).to have_content("Martin")
    expect(rendered).to have_content("Zalles")
    expect(rendered).to have_content("Haefeli")
    expect(rendered).to have_content("Lara")
  end
end
