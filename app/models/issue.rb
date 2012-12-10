class Issue < ActiveRecord::Base
  belongs_to :poller, :polymorphic => true
  has_many :polls
  has_many :quick_polls
  has_many :tags, :as => :taggable

  attr_accessible :poller_id, :poller_type, :title
end
