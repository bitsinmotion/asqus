class StandardPollOption < ActiveRecord::Base
  belongs_to :standard_poll_option_set
  attr_accessible :standard_poll_option_set_id, :text, :value
end
