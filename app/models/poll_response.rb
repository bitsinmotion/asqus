class PollResponse < ActiveRecord::Base
  attr_accessible :free_response, :value, :poll_id, :poll_question_id, :user_id
end
