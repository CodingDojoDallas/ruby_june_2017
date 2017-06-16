class Blog < ActiveRecord::Base
  has_many :users, through: :owners
  has_many :posts, dependent: :destroy
  has_many :owners
  has_many :messages, through: :posts
  has_many :poly_comments, as: :commentable, dependent: :destroy

  validates :name, :description, presence: :true
  validates_length_of :name, :description, :minimum => 8

  after_destroy :logRemoveBlog

  def logRemoveBlog
    puts 'Blog entries removed'
  end
end
