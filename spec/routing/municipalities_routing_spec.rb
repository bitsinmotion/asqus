require "spec_helper"

describe MunicipalitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/municipalities").should route_to("municipalities#index")
    end

    it "routes to #new" do
      get("/municipalities/new").should route_to("municipalities#new")
    end

    it "routes to #show" do
      get("/municipalities/1").should route_to("municipalities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/municipalities/1/edit").should route_to("municipalities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/municipalities").should route_to("municipalities#create")
    end

    it "routes to #update" do
      put("/municipalities/1").should route_to("municipalities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/municipalities/1").should route_to("municipalities#destroy", :id => "1")
    end

  end
end
