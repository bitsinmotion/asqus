class OfficialTenure < ActiveRecord::Base
  belongs_to :office
  belongs_to :official
  attr_accessible :from_date, :office_id, :official_id, :to_date

  validates_presence_of :office_id, :official_id, :from_date, :to_date
  validates_numericality_of :office_id, :official_id

end
