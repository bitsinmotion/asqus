require 'spec_helper'

describe "QuickPollOptions" do
  describe "GET /quick_poll_options" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get quick_poll_options_path
      response.status.should be(200)
    end
  end
end
