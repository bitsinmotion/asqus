class CongressionalDistrict < ActiveRecord::Base
  has_many :offices, :as => :polity
  belongs_to :state

  attr_accessible :district_number, :state_id

  validates_presence_of :state_id, :district_number
  validates_numericality_of :state_id, :district_number 

end
