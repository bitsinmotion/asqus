require "spec_helper"

describe PollQuestionsController do
  describe "routing" do

    it "routes to #index" do
      get("/poll_questions").should route_to("poll_questions#index")
    end

    it "routes to #new" do
      get("/poll_questions/new").should route_to("poll_questions#new")
    end

    it "routes to #show" do
      get("/poll_questions/1").should route_to("poll_questions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/poll_questions/1/edit").should route_to("poll_questions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/poll_questions").should route_to("poll_questions#create")
    end

    it "routes to #update" do
      put("/poll_questions/1").should route_to("poll_questions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/poll_questions/1").should route_to("poll_questions#destroy", :id => "1")
    end

  end
end
