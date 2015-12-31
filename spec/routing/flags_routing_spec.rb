require "rails_helper"

RSpec.describe FlagsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/flags").to route_to("flags#index")
    end

    it "routes to #new" do
      expect(:get => "/flags/new").to route_to("flags#new")
    end

    it "routes to #show" do
      expect(:get => "/flags/1").to route_to("flags#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/flags/1/edit").to route_to("flags#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/flags").to route_to("flags#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/flags/1").to route_to("flags#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/flags/1").to route_to("flags#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/flags/1").to route_to("flags#destroy", :id => "1")
    end

  end
end
