class QuickPollResponse < ActiveRecord::Base
  belongs_to :quick_poll
  belongs_to :user
  attr_accessible :quick_poll_id, :user_id, :value

  validates_presence_of :quick_poll_id, :user_id, :value
  vaidates_numericality_of :value, :only_integer => true, :greater_than_or_equal_to => 0


end
