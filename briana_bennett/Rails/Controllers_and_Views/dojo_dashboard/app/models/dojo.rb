class Dojo < ActiveRecord::Base
	validates :branch, :state, :city, :street, presence: true
end
