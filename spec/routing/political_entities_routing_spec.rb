require "spec_helper"

describe PoliticalEntitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/political_entities").should route_to("political_entities#index")
    end

    it "routes to #new" do
      get("/political_entities/new").should route_to("political_entities#new")
    end

    it "routes to #show" do
      get("/political_entities/1").should route_to("political_entities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/political_entities/1/edit").should route_to("political_entities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/political_entities").should route_to("political_entities#create")
    end

    it "routes to #update" do
      put("/political_entities/1").should route_to("political_entities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/political_entities/1").should route_to("political_entities#destroy", :id => "1")
    end

  end
end
