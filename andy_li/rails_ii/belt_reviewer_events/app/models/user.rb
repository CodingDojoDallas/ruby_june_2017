class User < ActiveRecord::Base
  has_secure_password
  belongs_to :state
  has_many :events
  has_many :events, through: :event_attendee
  has_many :comments

  email_regex = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :first_name, :last_name, :location, :state, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: email_regex }
end
