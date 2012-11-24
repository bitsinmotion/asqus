require "spec_helper"

describe OfficialsController do
  describe "routing" do

    it "routes to #index" do
      get("/officials").should route_to("officials#index")
    end

    it "routes to #new" do
      get("/officials/new").should route_to("officials#new")
    end

    it "routes to #show" do
      get("/officials/1").should route_to("officials#show", :id => "1")
    end

    it "routes to #edit" do
      get("/officials/1/edit").should route_to("officials#edit", :id => "1")
    end

    it "routes to #create" do
      post("/officials").should route_to("officials#create")
    end

    it "routes to #update" do
      put("/officials/1").should route_to("officials#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/officials/1").should route_to("officials#destroy", :id => "1")
    end

  end
end
