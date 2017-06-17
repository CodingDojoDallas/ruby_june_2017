class Event < ActiveRecord::Base
  belongs_to :state
  belongs_to :user
  has_many :comments
  has_many :users, through: :event_attendee

  validates :name, :date, :location, :state, presence: true
end
