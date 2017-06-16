class Owner < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog

  after_destroy :logRemoveOwner

  def logRemoveOwner
    puts 'Owner entries removed'
  end
end
