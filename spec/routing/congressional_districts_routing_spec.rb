require "spec_helper"

describe CongressionalDistrictsController do
  describe "routing" do

    it "routes to #index" do
      get("/congressional_districts").should route_to("congressional_districts#index")
    end

    it "routes to #new" do
      get("/congressional_districts/new").should route_to("congressional_districts#new")
    end

    it "routes to #show" do
      get("/congressional_districts/1").should route_to("congressional_districts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/congressional_districts/1/edit").should route_to("congressional_districts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/congressional_districts").should route_to("congressional_districts#create")
    end

    it "routes to #update" do
      put("/congressional_districts/1").should route_to("congressional_districts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/congressional_districts/1").should route_to("congressional_districts#destroy", :id => "1")
    end

  end
end
