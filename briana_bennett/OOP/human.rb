class Human

	def initialize
		@strength = 3
		@stealth = 3
		@intelligence = 3
		@health = 100
	end

	def attack(attacked)
		if obj.class.ancestors.include?(Human)
			obj.health -= 10
		end
	end
end