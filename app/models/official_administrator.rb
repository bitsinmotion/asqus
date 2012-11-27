class OfficialAdministrator < ActiveRecord::Base
  attr_accessible :official_id, :user_id

  validates_presence_of :official_id, :user_id
  validates_numericality_of :official_id, :user_id
end
