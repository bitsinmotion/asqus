class Office < ActiveRecord::Base
  belongs_to :polity, :polymorphic => true
  has_many :officials, :through => :official_tenures
  has_many :users, :through => :user_groups, :as => :group
  has_many :issues, :as => :poller

  attr_accessible :name, :polity_id, :polity_type, :timestamps

  validates_presence_of :name, :polity_id, :polity_type
  validates_numericality_of :polity_id

  def to_s
    return name
  end

end
