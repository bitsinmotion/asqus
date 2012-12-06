require "spec_helper"

describe StandardPollOptionSetsController do
  describe "routing" do

    it "routes to #index" do
      get("/standard_poll_option_sets").should route_to("standard_poll_option_sets#index")
    end

    it "routes to #new" do
      get("/standard_poll_option_sets/new").should route_to("standard_poll_option_sets#new")
    end

    it "routes to #show" do
      get("/standard_poll_option_sets/1").should route_to("standard_poll_option_sets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/standard_poll_option_sets/1/edit").should route_to("standard_poll_option_sets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/standard_poll_option_sets").should route_to("standard_poll_option_sets#create")
    end

    it "routes to #update" do
      put("/standard_poll_option_sets/1").should route_to("standard_poll_option_sets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/standard_poll_option_sets/1").should route_to("standard_poll_option_sets#destroy", :id => "1")
    end

  end
end
