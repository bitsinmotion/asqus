require 'spec_helper'

describe "CongressionalDistricts" do
  describe "GET /congressional_districts" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get congressional_districts_path
      response.status.should be(200)
    end
  end
end
