require "rails_helper"

RSpec.describe NonprofitsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/nonprofits").to route_to("nonprofits#index")
    end

    it "routes to #new" do
      expect(:get => "/nonprofits/new").to route_to("nonprofits#new")
    end

    it "routes to #show" do
      expect(:get => "/nonprofits/1").to route_to("nonprofits#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/nonprofits/1/edit").to route_to("nonprofits#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/nonprofits").to route_to("nonprofits#create")
    end

    it "routes to #update" do
      expect(:put => "/nonprofits/1").to route_to("nonprofits#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/nonprofits/1").to route_to("nonprofits#destroy", :id => "1")
    end

  end
end
