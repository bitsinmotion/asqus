class Poll < ActiveRecord::Base
  belongs_to :poll_workflow_state
  attr_accessible :body, :created_at, :official_id, :title, :updated_at
end
