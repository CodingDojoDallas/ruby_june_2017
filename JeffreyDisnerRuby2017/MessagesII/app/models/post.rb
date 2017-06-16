class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog
  has_many :messages, dependent: :destroy
  has_many :poly_comments, as: :commentable, dependent: :destroy

  validates :title, :content, presence: :true
  validates_length_of :title, :content, :minimum => 8

  after_destroy :logRemovepost

  def logRemovepost
    puts 'Post entries removed'
  end
end
