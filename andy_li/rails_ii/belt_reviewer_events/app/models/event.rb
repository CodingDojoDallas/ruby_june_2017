class Event < ActiveRecord::Base
  belongs_to :state
  belongs_to :user
  has_many :comments
  has_many :event_attendees
  has_many :attendees, through: :event_attendees, source: :user

  validates :name, :date, :location, :state, presence: true

  validates :date,
    date: { after_or_equal_to: Proc.new { Date.today }, message: "must be today or in future" }, on: :create
end
