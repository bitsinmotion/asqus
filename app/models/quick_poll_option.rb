class QuickPollOption < ActiveRecord::Base
  belongs_to :quick_poll
  attr_accessible :quick_poll_id, :text, :value
end
