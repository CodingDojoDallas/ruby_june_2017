class Human
	attr_accessor :strength, :intelligence, :stealth, :health

	def initialize
		@strength = 3
		@intelligence = 3
		@stealth = 3
		@health = 100
	end
	def display_health
		puts "Health: #{@health}"
		self
	end
	def attack(obj)
		if obj.class.ancestors[0]== Human
			obj.health -= 10
			puts "Attacked human"
		end
		self
	end
end
class Wizard < Human
	def initialize
		super
		@health = 50
		@intelligence = 25
		puts "Wizard created"
	end
	def heal
		@health += 10
		self
	end
	def fireball(obj)
		obj.health -= 20
		self
	end
end
class Ninja < Human
	def initialize
		super
		@stealth = 175
		puts "Ninja created"
	end
	def steal(obj)
		attack(obj)
		@health +=10
		self
	end
	def get_away
		@health -= 15
		self
	end
end
class Samurai < Human
	@@samurai_count = 0
	def initialize 
		super
		@health = 200
		@@samurai_count +=1
		puts "Samurai created"
	end
	def death_blow(obj)
		obj.health = 0
		self
	end
	def meditate
		@health = 200
		self
	end
	def how_many
		puts "Samurai: #{@@samurai_count}"
	end
end

andy = Human.new
patsy = Human.new
patsy.attack(andy).attack(andy)
andy.display_health

wizard1 = Wizard.new
ninja1 = Ninja.new
samurai1 = Samurai.new

wizard1.heal.display_health.fireball(ninja1)
ninja1.display_health.steal(wizard1).get_away.display_health
samurai1.death_blow(wizard1)
wizard1.display_health
samurai1.how_many
samurai1.display_health




