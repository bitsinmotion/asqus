class PollAnswer < ActiveRecord::Base
  attr_accessible :free_response, :ordinal, :poll_question_id, :text
end
