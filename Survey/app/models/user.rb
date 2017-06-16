class User < ActiveRecord::Base

  validates :name, :location, :language, presence: :true
  validates_length_of :name, :location, :language, :minimum => 5

end
