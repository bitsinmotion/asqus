require 'spec_helper'

describe "OfficialAdministrators" do
  describe "GET /official_administrators" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get official_administrators_path
      response.status.should be(200)
    end
  end
end
