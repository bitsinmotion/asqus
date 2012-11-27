require "spec_helper"

describe StateSenateDistrictsController do
  describe "routing" do

    it "routes to #index" do
      get("/state_senate_districts").should route_to("state_senate_districts#index")
    end

    it "routes to #new" do
      get("/state_senate_districts/new").should route_to("state_senate_districts#new")
    end

    it "routes to #show" do
      get("/state_senate_districts/1").should route_to("state_senate_districts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/state_senate_districts/1/edit").should route_to("state_senate_districts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/state_senate_districts").should route_to("state_senate_districts#create")
    end

    it "routes to #update" do
      put("/state_senate_districts/1").should route_to("state_senate_districts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/state_senate_districts/1").should route_to("state_senate_districts#destroy", :id => "1")
    end

  end
end
