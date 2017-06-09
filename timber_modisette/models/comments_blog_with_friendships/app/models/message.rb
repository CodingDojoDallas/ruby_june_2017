class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  has_many :comments, as: :commentable
  has_many :likes
  has_many :users_liked, through: :likes, source: :user
  validates :content, presence: true
end
