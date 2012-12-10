class UserGroup < ActiveRecord::Base
  attr_accessible :group_id, :group_type, :role, :user_id

  def to_s
    return "User " + user_id.to_s +  " membership in " + group_type + " " + group_id.to_s
  end

end
