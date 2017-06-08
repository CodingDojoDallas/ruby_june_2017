class Message < ApplicationRecord
  belongs_to :user
  has_many :users
  has_many :users_liked, through: :likes, source: :user
end
