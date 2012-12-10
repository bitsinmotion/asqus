require "spec_helper"

describe QuickPollResponsesController do
  describe "routing" do

    it "routes to #index" do
      get("/quick_poll_responses").should route_to("quick_poll_responses#index")
    end

    it "routes to #new" do
      get("/quick_poll_responses/new").should route_to("quick_poll_responses#new")
    end

    it "routes to #show" do
      get("/quick_poll_responses/1").should route_to("quick_poll_responses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/quick_poll_responses/1/edit").should route_to("quick_poll_responses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/quick_poll_responses").should route_to("quick_poll_responses#create")
    end

    it "routes to #update" do
      put("/quick_poll_responses/1").should route_to("quick_poll_responses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/quick_poll_responses/1").should route_to("quick_poll_responses#destroy", :id => "1")
    end

  end
end
