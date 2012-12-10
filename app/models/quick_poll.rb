class QuickPoll < ActiveRecord::Base
  belongs_to :poll_workflow_state
  belongs_to :issue
  has_many :quick_poll_options, :dependent => :destroy
  has_many :quick_poll_responses, :dependent => :destroy

  attr_accessible :body, :end_time, :issue_id, :poll_workflow_state_id, :start_time, :title, :quick_poll_options_attributes
  accepts_nested_attributes_for :quick_poll_options, :issue

end
