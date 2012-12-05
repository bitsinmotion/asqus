require "spec_helper"

describe NationsController do
  describe "routing" do

    it "routes to #index" do
      get("/nations").should route_to("nations#index")
    end

    it "routes to #new" do
      get("/nations/new").should route_to("nations#new")
    end

    it "routes to #show" do
      get("/nations/1").should route_to("nations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/nations/1/edit").should route_to("nations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/nations").should route_to("nations#create")
    end

    it "routes to #update" do
      put("/nations/1").should route_to("nations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/nations/1").should route_to("nations#destroy", :id => "1")
    end

  end
end
