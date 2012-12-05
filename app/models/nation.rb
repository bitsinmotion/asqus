class Nation < ActiveRecord::Base
  has_many :offices, :as => :polity

  attr_accessible :name
end
