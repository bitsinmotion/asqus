class QuickPollOption < ActiveRecord::Base
  belongs_to :quick_poll
  attr_accessible :quick_poll_id, :text, :value

  validates_presence_of :quick_poll, :text, :value
  validates_numericality_of :value, :only_integer => true, :greater_than_or_equal_to => 0

end
