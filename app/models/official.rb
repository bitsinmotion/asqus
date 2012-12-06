class Official < ActiveRecord::Base
  has_many :offices, :through => :official_tenures
  has_many :users, :through => :user_groups, :as => :group

  attr_accessible :email, :name

  validates_presence_of :name

end
