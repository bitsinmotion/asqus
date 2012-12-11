class Ward < ActiveRecord::Base
  belongs_to :municipality
  attr_accessible :municipality_id, :ward_number

  validates_presence_of :municipality_id, :ward_number
  validates_numericality_of :ward_number, :only_integer => true, :greater_than => 0
  validates_uniqueness_of :ward_number, :scope=>:municipality_id

  def to_s
   return "Ward " + ward_number.to_s
  end


end
