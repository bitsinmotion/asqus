require 'spec_helper'

describe "PollWorkflowStates" do
  describe "GET /poll_workflow_states" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get poll_workflow_states_path
      response.status.should be(200)
    end
  end
end
