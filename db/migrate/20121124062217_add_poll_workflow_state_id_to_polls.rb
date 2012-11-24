class AddPollWorkflowStateIdToPolls < ActiveRecord::Migration
  def change
    add_column :polls, :poll_workflow_state_id, :integer, :null => false, :default => 0
  end
end
