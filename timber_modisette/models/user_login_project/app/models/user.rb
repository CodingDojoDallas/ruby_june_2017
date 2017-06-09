class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, :age, presence: true, length: { in: 2..50 }
  validates :age, numericality: { greater_than_or_equal_to: 10, less_than: 150 }
  validates :email_address, presence: true, uniqueness: {case_sensitive: false }, format: { with: EMAIL_REGEX }


  # after_create :full_name

  def full_name
    "#{self.first_name} #{self.last_name}"
  end




end
