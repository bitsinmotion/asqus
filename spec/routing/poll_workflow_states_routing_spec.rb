require "spec_helper"

describe PollWorkflowStatesController do
  describe "routing" do

    it "routes to #index" do
      get("/poll_workflow_states").should route_to("poll_workflow_states#index")
    end

    it "routes to #new" do
      get("/poll_workflow_states/new").should route_to("poll_workflow_states#new")
    end

    it "routes to #show" do
      get("/poll_workflow_states/1").should route_to("poll_workflow_states#show", :id => "1")
    end

    it "routes to #edit" do
      get("/poll_workflow_states/1/edit").should route_to("poll_workflow_states#edit", :id => "1")
    end

    it "routes to #create" do
      post("/poll_workflow_states").should route_to("poll_workflow_states#create")
    end

    it "routes to #update" do
      put("/poll_workflow_states/1").should route_to("poll_workflow_states#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/poll_workflow_states/1").should route_to("poll_workflow_states#destroy", :id => "1")
    end

  end
end
