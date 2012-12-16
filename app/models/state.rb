class State < ActiveRecord::Base
  has_many :congressional_districts
  has_many :state_senate_districts
  has_many :state_house_districts
  has_many :counties
  has_many :municipalities
  has_many :offices, :as => :polity, :class_name => 'Office'
  has_many :congressional_offices, :through => :congressional_districts, :class_name => 'Office', :source => :offices
  has_many :state_senate_offices, :through => :state_senate_districts, :class_name => 'Office', :source => :offices
  has_many :state_house_offices, :through => :state_house_districts, :class_name => 'Office', :source => :offices
  has_many :county_offices, :through => :counties, :class_name => 'Office', :source => :offices
  has_many :municipal_offices, :through => :municipalities, :class_name => 'Office', :source => :offices
  
  attr_accessible :abbreviation, :name

  validates_presence_of :name, :abbreviation

  def to_s
    return name
  end

end
