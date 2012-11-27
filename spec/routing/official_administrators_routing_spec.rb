require "spec_helper"

describe OfficialAdministratorsController do
  describe "routing" do

    it "routes to #index" do
      get("/official_administrators").should route_to("official_administrators#index")
    end

    it "routes to #new" do
      get("/official_administrators/new").should route_to("official_administrators#new")
    end

    it "routes to #show" do
      get("/official_administrators/1").should route_to("official_administrators#show", :id => "1")
    end

    it "routes to #edit" do
      get("/official_administrators/1/edit").should route_to("official_administrators#edit", :id => "1")
    end

    it "routes to #create" do
      post("/official_administrators").should route_to("official_administrators#create")
    end

    it "routes to #update" do
      put("/official_administrators/1").should route_to("official_administrators#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/official_administrators/1").should route_to("official_administrators#destroy", :id => "1")
    end

  end
end
