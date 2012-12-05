class PollOption < ActiveRecord::Base
  attr_accessible :poll_question_id, :text, :value
end
