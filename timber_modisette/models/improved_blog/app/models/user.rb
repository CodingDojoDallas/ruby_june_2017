class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  has_many :owners
  has_many :messages
  has_many :posts
  has_many :blogs, through: :owners

  validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end
