class Tweet < ApplicationRecord
  belongs_to :user

  # validations
  # message is present and no blank tweets
  # less than 140
  validates :message, presence: true, length: { maximum: 140, too_long: 'a tweet is only 140 characters max'}
  # no blank user id
  validates :user_id, presence: true
  # and has to be real user
  validates :user, presence: true
end

# == Schema Information
#
# Table name: tweets
#
#  id         :integer          not null, primary key
#  message    :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_tweets_on_user_id  (user_id)
#
