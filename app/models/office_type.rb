class OfficeType < ActiveRecord::Base
  attr_accessible :description
  validates :description, :presence=>true, :uniqueness=>true

  def to_s
    return description
  end


end
