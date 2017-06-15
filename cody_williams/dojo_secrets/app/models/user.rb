class User < ApplicationRecord
  has_secure_password
  has_many :secrets
  has_many :likes
  has_many :secrets_liked, through: :likes, source: :secret
  validates :name, :email, presence: true
end
