class Message < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :poly_comments, as: :commentable, dependent: :destroy

  validates :message, presence: :true
  validates_length_of :message, :minimum => 8

  after_destroy :logRemoveMessage

  def logRemoveMessage
    puts 'Message entries removed'
  end
end
