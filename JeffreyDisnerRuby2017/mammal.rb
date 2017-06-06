

class Mammal
  def initialize
    @health = 150
  end
  def displayHealth
    puts "Remaining HP: #{@health}"
  end
end

mammal01 = Mammal.new()
#mammal01.displayHealth
