class UqRelation < ActiveRecord::Base
  attr_accessible :question_id, :user_id, :yaynay

  belongs_to :question, class_name: "Question"
  belongs_to :user, class_name: "User"

  validates :question_id, presence: true
  validates :user_id, presence: true
end
