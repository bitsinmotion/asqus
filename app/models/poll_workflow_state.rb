class PollWorkflowState < ActiveRecord::Base
  has_many :polls
  attr_accessible :description

  def to_s
    return description
  end
end
