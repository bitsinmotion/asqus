require 'spec_helper'

describe "QuickPolls" do
  describe "GET /quick_polls" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get quick_polls_path
      response.status.should be(200)
    end
  end
end
