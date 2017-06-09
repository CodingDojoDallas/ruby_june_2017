class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  has_many :owners
  has_many :messages
  has_many :posts
  has_many :likes
  has_many :comments, as: :commentable
  has_many :messages_liked, through: :likes, source: :message
  has_many :blogs, through: :owners
  has_many :friendships
  has_many :friends, through: :friendships, source: :friend

  validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end
