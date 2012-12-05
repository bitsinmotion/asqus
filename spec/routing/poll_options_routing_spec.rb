require "spec_helper"

describe PollOptionsController do
  describe "routing" do

    it "routes to #index" do
      get("/poll_options").should route_to("poll_options#index")
    end

    it "routes to #new" do
      get("/poll_options/new").should route_to("poll_options#new")
    end

    it "routes to #show" do
      get("/poll_options/1").should route_to("poll_options#show", :id => "1")
    end

    it "routes to #edit" do
      get("/poll_options/1/edit").should route_to("poll_options#edit", :id => "1")
    end

    it "routes to #create" do
      post("/poll_options").should route_to("poll_options#create")
    end

    it "routes to #update" do
      put("/poll_options/1").should route_to("poll_options#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/poll_options/1").should route_to("poll_options#destroy", :id => "1")
    end

  end
end
