require "spec_helper"

describe StateHouseDistrictsController do
  describe "routing" do

    it "routes to #index" do
      get("/state_house_districts").should route_to("state_house_districts#index")
    end

    it "routes to #new" do
      get("/state_house_districts/new").should route_to("state_house_districts#new")
    end

    it "routes to #show" do
      get("/state_house_districts/1").should route_to("state_house_districts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/state_house_districts/1/edit").should route_to("state_house_districts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/state_house_districts").should route_to("state_house_districts#create")
    end

    it "routes to #update" do
      put("/state_house_districts/1").should route_to("state_house_districts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/state_house_districts/1").should route_to("state_house_districts#destroy", :id => "1")
    end

  end
end
