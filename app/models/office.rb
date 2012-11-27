class Office < ActiveRecord::Base
  belongs_to :polity, :polymorphic => true
  has_many :officials, :through => :official_tenures

  attr_accessible :name, :polity_id, :polity_type, :timestamps

  validates_presence_of :name, :polity_id, :polity_type
  validates_numericality_of :polity_id

end
