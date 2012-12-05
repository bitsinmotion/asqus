require "spec_helper"

describe QuickPollOptionsController do
  describe "routing" do

    it "routes to #index" do
      get("/quick_poll_options").should route_to("quick_poll_options#index")
    end

    it "routes to #new" do
      get("/quick_poll_options/new").should route_to("quick_poll_options#new")
    end

    it "routes to #show" do
      get("/quick_poll_options/1").should route_to("quick_poll_options#show", :id => "1")
    end

    it "routes to #edit" do
      get("/quick_poll_options/1/edit").should route_to("quick_poll_options#edit", :id => "1")
    end

    it "routes to #create" do
      post("/quick_poll_options").should route_to("quick_poll_options#create")
    end

    it "routes to #update" do
      put("/quick_poll_options/1").should route_to("quick_poll_options#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/quick_poll_options/1").should route_to("quick_poll_options#destroy", :id => "1")
    end

  end
end
