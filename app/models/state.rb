class State < ActiveRecord::Base
  has_many :offices, :as => :polity
  
  attr_accessible :abbreviation, :name

  validates_presence_of :name, :abbreviation

  def to_s
    return name
  end

end
