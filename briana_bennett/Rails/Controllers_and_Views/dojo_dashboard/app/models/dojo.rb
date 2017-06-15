class Dojo < ActiveRecord::Base
	validates :branch, :state, :city, :street, presence: true
	has_many :students, dependent: :destroy
end
