class PollResponse < ActiveRecord::Base
  attr_accessible :free_response, :ordinal, :poll_id, :poll_question_id, :user_id
end
