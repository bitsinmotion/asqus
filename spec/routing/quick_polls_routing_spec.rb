require "spec_helper"

describe QuickPollsController do
  describe "routing" do

    it "routes to #index" do
      get("/quick_polls").should route_to("quick_polls#index")
    end

    it "routes to #new" do
      get("/quick_polls/new").should route_to("quick_polls#new")
    end

    it "routes to #show" do
      get("/quick_polls/1").should route_to("quick_polls#show", :id => "1")
    end

    it "routes to #edit" do
      get("/quick_polls/1/edit").should route_to("quick_polls#edit", :id => "1")
    end

    it "routes to #create" do
      post("/quick_polls").should route_to("quick_polls#create")
    end

    it "routes to #update" do
      put("/quick_polls/1").should route_to("quick_polls#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/quick_polls/1").should route_to("quick_polls#destroy", :id => "1")
    end

  end
end
