# == Schema Information
#
# Table name: responses
#
#  id          :integer          not null, primary key
#  body        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer
#  user_id     :integer
#

class Response < ActiveRecord::Base
  attr_accessible :body

  belongs_to :user
  belongs_to :question

  validates :user_id, presence: true
  validates :question_id, presence: true
end
