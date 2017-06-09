class Blog < ActiveRecord::Base
  has_many :posts
  has_many :owners
  has_many :comments, as: :commentable

  validates :name, :desc, presence: true
end
