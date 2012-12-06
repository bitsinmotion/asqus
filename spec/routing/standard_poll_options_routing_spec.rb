require "spec_helper"

describe StandardPollOptionsController do
  describe "routing" do

    it "routes to #index" do
      get("/standard_poll_options").should route_to("standard_poll_options#index")
    end

    it "routes to #new" do
      get("/standard_poll_options/new").should route_to("standard_poll_options#new")
    end

    it "routes to #show" do
      get("/standard_poll_options/1").should route_to("standard_poll_options#show", :id => "1")
    end

    it "routes to #edit" do
      get("/standard_poll_options/1/edit").should route_to("standard_poll_options#edit", :id => "1")
    end

    it "routes to #create" do
      post("/standard_poll_options").should route_to("standard_poll_options#create")
    end

    it "routes to #update" do
      put("/standard_poll_options/1").should route_to("standard_poll_options#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/standard_poll_options/1").should route_to("standard_poll_options#destroy", :id => "1")
    end

  end
end
