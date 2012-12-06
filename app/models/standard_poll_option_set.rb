class StandardPollOptionSet < ActiveRecord::Base
  has_many :standar_poll_options
  attr_accessible :name
end
