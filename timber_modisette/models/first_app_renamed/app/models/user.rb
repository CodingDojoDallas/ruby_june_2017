class User < ActiveRecord::Base
  has_many :messages
  has_one :address
end
