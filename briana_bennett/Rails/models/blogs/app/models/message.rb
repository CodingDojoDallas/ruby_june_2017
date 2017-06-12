class Message < ActiveRecord::Base
  validates :author, presence: true
  validates :message, presence: true, length: {minimum: 15}
  belongs_to :post
  has_many :comments, as: :commentable
end
