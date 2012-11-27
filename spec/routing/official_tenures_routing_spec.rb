require "spec_helper"

describe OfficialTenuresController do
  describe "routing" do

    it "routes to #index" do
      get("/official_tenures").should route_to("official_tenures#index")
    end

    it "routes to #new" do
      get("/official_tenures/new").should route_to("official_tenures#new")
    end

    it "routes to #show" do
      get("/official_tenures/1").should route_to("official_tenures#show", :id => "1")
    end

    it "routes to #edit" do
      get("/official_tenures/1/edit").should route_to("official_tenures#edit", :id => "1")
    end

    it "routes to #create" do
      post("/official_tenures").should route_to("official_tenures#create")
    end

    it "routes to #update" do
      put("/official_tenures/1").should route_to("official_tenures#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/official_tenures/1").should route_to("official_tenures#destroy", :id => "1")
    end

  end
end
