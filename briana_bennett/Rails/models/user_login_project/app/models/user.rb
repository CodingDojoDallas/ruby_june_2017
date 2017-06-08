class User < ActiveRecord::Base
	validates :first_name, :last_name, presence: true, length: {in: 2..20}
	validates :age, numericality: {only_integer: true, greater_than_or_equal_to: 10, less_than: 150} 
	validates :email, presence: true
end
