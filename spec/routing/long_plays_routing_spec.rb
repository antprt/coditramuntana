require "rails_helper"

RSpec.describe LongPlaysController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/long_plays").to route_to("long_plays#index")
    end

    it "routes to #new" do
      expect(:get => "/long_plays/new").to route_to("long_plays#new")
    end

    it "routes to #show" do
      expect(:get => "/long_plays/1").to route_to("long_plays#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/long_plays/1/edit").to route_to("long_plays#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/long_plays").to route_to("long_plays#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/long_plays/1").to route_to("long_plays#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/long_plays/1").to route_to("long_plays#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/long_plays/1").to route_to("long_plays#destroy", :id => "1")
    end
  end
end
