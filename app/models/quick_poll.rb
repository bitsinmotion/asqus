class QuickPoll < ActiveRecord::Base
  attr_accessible :body, :end_time, :poll_workflow_state, :issue_id, :start_time, :title
end
