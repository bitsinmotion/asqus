class QuickPollType < ActiveRecord::Base
  attr_accessible :type
  validates_presence_of :type
  validates_uniqueness_of :type
end
