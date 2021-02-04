require "rails_helper"

RSpec.describe FriendrequestsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/friendrequests").to route_to("friendrequests#index")
    end

    it "routes to #new" do
      expect(:get => "/friendrequests/new").to route_to("friendrequests#new")
    end

    it "routes to #show" do
      expect(:get => "/friendrequests/1").to route_to("friendrequests#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/friendrequests/1/edit").to route_to("friendrequests#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/friendrequests").to route_to("friendrequests#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/friendrequests/1").to route_to("friendrequests#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/friendrequests/1").to route_to("friendrequests#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/friendrequests/1").to route_to("friendrequests#destroy", :id => "1")
    end

  end
end
