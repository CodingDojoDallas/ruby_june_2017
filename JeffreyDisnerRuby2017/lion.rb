
require_relative "mammal"

class Lion < Mammal
  def initialize
    @health = 170
    self
  end
  def fly
    @health -= 10
    self
  end
  def attack!
    @health -= 50
    self
  end
  def devour
    @health += 20
    self
  end
  def displayHealthLion
    puts "This is a freaking GRIFFIN, not a lion!"
    self.displayHealth
  end
end

lion01 = Lion.new()
lion01.attack!.attack!.attack!.devour.devour.fly.fly.displayHealthLion
