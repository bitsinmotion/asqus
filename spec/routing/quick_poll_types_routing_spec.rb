require "spec_helper"

describe QuickPollTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/quick_poll_types").should route_to("quick_poll_types#index")
    end

    it "routes to #new" do
      get("/quick_poll_types/new").should route_to("quick_poll_types#new")
    end

    it "routes to #show" do
      get("/quick_poll_types/1").should route_to("quick_poll_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/quick_poll_types/1/edit").should route_to("quick_poll_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/quick_poll_types").should route_to("quick_poll_types#create")
    end

    it "routes to #update" do
      put("/quick_poll_types/1").should route_to("quick_poll_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/quick_poll_types/1").should route_to("quick_poll_types#destroy", :id => "1")
    end

  end
end
