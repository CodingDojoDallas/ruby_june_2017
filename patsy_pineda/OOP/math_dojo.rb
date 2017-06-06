class MathDojo
	def initialize
		@initial_sum = 0
		puts "Current is #{@initial_sum}"
		self
	end
	def add(*params)
		params.flatten(1).each { |a| @initial_sum+=a }
		puts "Current sum is #{@initial_sum}"
		self
	end
	def subtract(*params)
		params.flatten(1).each { |a| @initial_sum-=a}
		puts "Current sum is #{@initial_sum}"
		self
	end
end

a = MathDojo.new.add([2, 3, 4], [5]).subtract(1, 2)

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2) # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3])

# def splatting *params
#  params
# end
# puts splatting(1)# => [1]
# puts splatting(1, 2, 3, 4, 5).inspect