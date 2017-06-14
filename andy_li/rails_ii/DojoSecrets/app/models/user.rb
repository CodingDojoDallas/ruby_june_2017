class User < ActiveRecord::Base
  has_secure_password

  email_regex = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: email_regex }
end
