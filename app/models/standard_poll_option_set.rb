class StandardPollOptionSet < ActiveRecord::Base
  has_many :standard_poll_options
  attr_accessible :name
  attr_accessible :standard_poll_options_attributes
  accepts_nested_attributes_for :standard_poll_options, :allow_destroy => true, :reject_if => lambda { |o| o[:text].blank? }

end
