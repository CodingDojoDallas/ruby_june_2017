# class MathDojo
#   @@sum = 0
#   def add(num)
#     @@sum = @@sum + num
#     self
#   end
#   def subtract(num)
#     @@sum = @@sum - num
#     self
#   end
#   def result
#     @@sum
#   end
# end
#
# temp1 = MathDojo.new
#
# puts temp1.add(1).add(5).result

class MathDojo
  attr_reader :answer

  def initialize
    @answer = 0
  end

  def add(*numbers)
    @answer += numbers.flatten.reduce(0, :+)
    self
  end

  def subtract(*numbers)
    @answer -= numbers.flatten.reduce(0, :+)
    self
  end
end

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).answer
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).answer
puts challenge1
puts challenge2


list = [1,2.4,3,4,5,[9,9,9]]
puts list.flatten.reduce(:+)
