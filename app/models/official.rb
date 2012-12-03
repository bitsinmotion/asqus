class Official < ActiveRecord::Base
  has_many :offices, :through => :official_tenures
  has_many :users, though user_groups, :as => :group
  has_many :polls, :as => :poller

  attr_accessible :email, :name

  validates_presence_of :name

end
