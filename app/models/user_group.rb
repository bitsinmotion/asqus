class UserGroup < ActiveRecord::Base
  attr_accessible :group_id, :group_type, :role, :user_id
end
