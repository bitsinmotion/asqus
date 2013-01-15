# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Question < ActiveRecord::Base
  attr_accessible :body, :title, :user, :up_cache, :down_cache, :rank_value, :controversy_value, :official_id

  belongs_to :official
  belongs_to :user

  has_many :questions, dependent: :destroy
  has_many :oq_relations, dependent: :destroy
  has_many :responses, dependent: :destroy
  has_many :uq_relations, foreign_key: "user_id", dependent: :destroy
  has_many :voters, through: :uq_relations, source: :user
  has_many :comments, as: :commentable

  validates :user_id, presence: true
  validates :official_id, presence: true

  def calcRank
    if(updated_at != nil)
      time_val = Time.now - created_at
    else
      time_val = 10
    end

    up_down_value = up_cache - down_cache
    rank_value = 12/Math.log(time_val) + up_down_value
    update_attributes(:rank_value => rank_value)
  end

  def calcControversy
    if(updated_at != nil)
      time_val = Time.now - created_at
      if(up_cache == 0 and down_cache == 0)
        controversy_value = 0
      else
        cval = ((up_cache + down_cache + 10).to_f/((up_cache - down_cache).abs+9) - 1).abs
        controversy_value = 1/Math.log(time_val).abs + cval
      end
    else
      controversy_value = 0
    end

    update_attributes(:controversy_value => controversy_value)
  end
end