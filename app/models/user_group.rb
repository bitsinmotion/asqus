class UserGroup < ActiveRecord::Base
  belongs_to :group, :through=>user_groups
  attr_accessible :group_id, :group_type, :role, :user_id
end
