#Mammal should have default health attritube with value of 150 and a method that displays health.
class Mammal
	def initialize
		@health = 150
	end
	def display_health
		puts "Health: #{@health}"
	end
end