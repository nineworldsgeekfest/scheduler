require "rails_helper"

RSpec.describe ConferencesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/conferences").to route_to("conferences#index")
    end

    it "routes to #new" do
      expect(:get => "/conferences/new").to route_to("conferences#new")
    end

    it "routes to #show" do
      expect(:get => "/conferences/1").to route_to("conferences#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/conferences/1/edit").to route_to("conferences#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/conferences").to route_to("conferences#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/conferences/1").to route_to("conferences#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/conferences/1").to route_to("conferences#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/conferences/1").to route_to("conferences#destroy", :id => "1")
    end

  end
end
