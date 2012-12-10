class QuickPollResponse < ActiveRecord::Base
  belongs_to :quick_poll
  belongs_to :user
  attr_accessible :quick_poll_id, :user_id, :value


end
