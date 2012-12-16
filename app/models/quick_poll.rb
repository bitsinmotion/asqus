class QuickPoll < ActiveRecord::Base

  belongs_to :poll_workflow_state
  belongs_to :issue
  belongs_to :quick_poll_type

  has_many :quick_poll_options
  has_many :quick_poll_responses

  attr_accessible :body, :end_time, :issue_id, :poll_workflow_state_id, :start_time, :title, :quick_poll_type_id, :quick_poll_options_attributes
  attr_accessible :poll_workflow_state_id

  accepts_nested_attributes_for :quick_poll_options, :allow_destroy => true, :reject_if => lambda { |o| o[:text].blank? }

  validates_presence_of :issue, :quick_poll_type, :title, :end_time, :start_time
  validates_associated :quick_poll_type, :poll_workflow_state, :issue

  def to_s
    return title
  end

end
