class Blog < ActiveRecord::Base
  has_many :posts
  validates :name, :description, presence: true, length: { in: 2..50 }
end
