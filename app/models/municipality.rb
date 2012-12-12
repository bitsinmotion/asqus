class Municipality < ActiveRecord::Base
  has_many :offices, :as => :polity
  has_many :wards
  belongs_to :state
  attr_accessible :name, :state_id
  validates_presence_of :state_id, :name
  validates_uniqueness_of :name, :scope => :state_id

  def to_s
    return name + ", " + state.abbreviation
  end

end
