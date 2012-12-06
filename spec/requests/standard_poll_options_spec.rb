require 'spec_helper'

describe "StandardPollOptions" do
  describe "GET /standard_poll_options" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get standard_poll_options_path
      response.status.should be(200)
    end
  end
end
