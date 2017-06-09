class Message < ActiveRecord::Base
  belongs_to :post
  validates :author, presence: true, length: { in: 2..50 }
  validates :content, presence: true, length: { in: 2..400 }
end
