class County < ActiveRecord::Base
  has_many :offices, :as => :polity
  belongs_to :state
  attr_accessible :name, :state_id

  validates_presence_of :state_id, :name
  validates_numericality_of :state_id


end
