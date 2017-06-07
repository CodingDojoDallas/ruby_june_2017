

class Human
  attr_accessor :health, :strength, :stealth, :intelligence
  def initialize
    @health = 100
    @strength = 3
    @stealth = 3
    @intelligence = 3
  end
  def attack(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 20
      self.strength += 2
      self.intelligence += 1
    end
  end
  def sneak_attack(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 30
      self.stealth += 10
      self.intelligence += 4
      self.strength += 1
    end
  end
end

class Giant < Human
  attr_accessor :health, :strength, :stealth, :intelligence
  def initialize
    @health = 200
    @strength = 5
    @stealth = 0
    @intelligence = 0
  end
  def attack(obj)
    obj.health -= 40
    puts "the humans health is dwindling HH: #{obj.health}"
    obj
  end
  def eat
    @health += 10
    puts "i ate the tiny human my health increased to: #{@health}"
    self
  end
end


h = Human.new
g = Giant.new

puts g.attack(h)
puts g.eat
