class Official < ActiveRecord::Base
  has_many :offices, :through => :official_tenures
  has_many :administrators, :through => :official_administrators
  attr_accessible :email, :name

  validates_presence_of :name

end
