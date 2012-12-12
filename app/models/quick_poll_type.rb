class QuickPollType < ActiveRecord::Base
  attr_accessible :type
  validates_presence_of :name
  validates_uniqueness_of :name
end
