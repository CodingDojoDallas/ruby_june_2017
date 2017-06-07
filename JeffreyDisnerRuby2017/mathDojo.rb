
class MathDojo

  def initialize
    @result = 0
    return self
  end
  def add(*arguments)
    sumA = 0
    arguments.flatten.each do |i|
        sumA += i
    end
    @result += sumA
    self
  end
  def subtract(*arguments)
    sumS = 0
    arguments.flatten.each do |i|
        sumS -= i
    end
    @result += sumS
    self
  end
  def result
    puts @result
  end

end

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
