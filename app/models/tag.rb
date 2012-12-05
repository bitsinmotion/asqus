class Tag < ActiveRecord::Base
  belogs_to :taggable, :polymorphic => true
  attr_accessible :context, :tag, :taggable_id, :taggable_type
end
