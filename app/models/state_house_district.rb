class StateHouseDistrict < ActiveRecord::Base
  has_many :offices, :as => :polity
  belongs_to :state

  attr_accessible :district_number, :state_id

  validates_presence_of :state_id, :district_number
  validates_numericality_of :state_id, :district_number

  def to_s
    return state.name + " state house district " + district_number.to_s()
  end

end
