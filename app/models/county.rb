class County < ActiveRecord::Base
  has_many :offices, :as => :polity
  belongs_to :state
  attr_accessible :name, :state_id

  validates_presence_of :state_id, :name
  validates_numericality_of :state_id
  validates_uniqueness_of :name, :scope => :state_id
  def to_s
    return name + " County, " + state.name
  end

end
