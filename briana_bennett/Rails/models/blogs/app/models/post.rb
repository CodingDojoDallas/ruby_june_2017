class Post < ActiveRecord::Base
  validates :content, presence: true
  validates :title, presence: true, length: {minimum: 7}
  belongs_to :blog
  has_many :messages, dependent: :destroy
  has_many :comments, as: :commentable
end
