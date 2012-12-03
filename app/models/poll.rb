class Poll < ActiveRecord::Base
  belongs_to :poll_workflow_state
  belongs_to :poller, :polymorphic => true
  attr_accessible :title, :body, :poller_id, :poller_type, :poll_workflow_state_id, :start_time, :end_time
end
