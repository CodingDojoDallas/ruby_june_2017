class User < ApplicationRecord
	has_many :messages

	#many-to-many
	has_many :likes
	has_many :messages_liked, through: :likes, source: :message

	#self join
	has_many :friendships
	has_many :friends, through: :friendships, source: :user
end
