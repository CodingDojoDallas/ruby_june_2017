class Dojo < ActiveRecord::Base
	validates :state, presence: true, length: {is:2}
	validates :city, :name, presence: true
	has_many :ninjas, dependent: :destroy
end
