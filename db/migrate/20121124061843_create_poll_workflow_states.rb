class CreatePollWorkflowStates < ActiveRecord::Migration
  def change
    create_table :poll_workflow_states do |t|
      t.string :description

      t.timestamps
    end
  end
end
