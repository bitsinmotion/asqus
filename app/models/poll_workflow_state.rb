class PollWorkflowState < ActiveRecord::Base
  has_many :polls
  attr_accessible :description
end
