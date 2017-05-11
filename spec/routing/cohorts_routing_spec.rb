require "rails_helper"

RSpec.describe "Routing to cohorts", :type => :routing do
  it "routes GET /cohorts to cohorts#index" do
    expect(:get => "/cohorts").to route_to("cohorts#index")
  end

  it "routes GET /cohorts/new to cohorts#new" do
    expect(:get => "/cohorts/new").to route_to("cohorts#new")
  end

  it "routes GET /cohorts/1 to cohorts#show" do
    expect(:get => "/cohorts/1").to route_to("cohorts#show", :id => "1")
  end

  it "routes POST /cohorts to cohorts#create" do
    expect(:post => "/cohorts").to route_to("cohorts#create")
  end

  it "routes DELETE /cohorts/1 to cohorts#destroy" do
    expect(:delete => "/cohorts/1").to route_to("cohorts#destroy", :id => "1")
  end
end