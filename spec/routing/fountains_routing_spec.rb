require "rails_helper"

RSpec.describe FountainsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fountains").to route_to("fountains#index")
    end

    it "routes to #new" do
      expect(:get => "/fountains/new").to route_to("fountains#new")
    end

    it "routes to #show" do
      expect(:get => "/fountains/1").to route_to("fountains#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fountains/1/edit").to route_to("fountains#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fountains").to route_to("fountains#create")
    end

    it "routes to #update" do
      expect(:put => "/fountains/1").to route_to("fountains#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fountains/1").to route_to("fountains#destroy", :id => "1")
    end

  end
end
