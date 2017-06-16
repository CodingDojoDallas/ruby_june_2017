class User < ActiveRecord::Base
  has_many :blogs, through: :owners, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :owners
  has_many :poly_comments, as: :commentable, dependent: :destroy
  has_many :friendships
  has_many :friends, through: :friendships, source: :user

  validates :firstName, :lastName, :email, presence: :true
  validates_length_of :firstName, :lastName, :email, :minimum => 5
end

#create users
#create blogs
#create owners on_create
#create posts
#create messages
