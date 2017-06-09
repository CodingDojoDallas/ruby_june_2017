class Post < ActiveRecord::Base
  belongs_to :blog
  has_many :messages, dependent: :destroy
  validates :title, presence: true, length: { in: 2..50 }
  validates :content, presence: true, length: { in: 2..400 }
end
