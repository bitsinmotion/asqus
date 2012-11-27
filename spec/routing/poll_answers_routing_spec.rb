require "spec_helper"

describe PollAnswersController do
  describe "routing" do

    it "routes to #index" do
      get("/poll_answers").should route_to("poll_answers#index")
    end

    it "routes to #new" do
      get("/poll_answers/new").should route_to("poll_answers#new")
    end

    it "routes to #show" do
      get("/poll_answers/1").should route_to("poll_answers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/poll_answers/1/edit").should route_to("poll_answers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/poll_answers").should route_to("poll_answers#create")
    end

    it "routes to #update" do
      put("/poll_answers/1").should route_to("poll_answers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/poll_answers/1").should route_to("poll_answers#destroy", :id => "1")
    end

  end
end
