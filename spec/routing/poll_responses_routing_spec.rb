require "spec_helper"

describe PollResponsesController do
  describe "routing" do

    it "routes to #index" do
      get("/poll_responses").should route_to("poll_responses#index")
    end

    it "routes to #new" do
      get("/poll_responses/new").should route_to("poll_responses#new")
    end

    it "routes to #show" do
      get("/poll_responses/1").should route_to("poll_responses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/poll_responses/1/edit").should route_to("poll_responses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/poll_responses").should route_to("poll_responses#create")
    end

    it "routes to #update" do
      put("/poll_responses/1").should route_to("poll_responses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/poll_responses/1").should route_to("poll_responses#destroy", :id => "1")
    end

  end
end
