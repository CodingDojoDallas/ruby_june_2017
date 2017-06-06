require_relative "mammal"

class Dog < Mammal
  def subclass_display_health
    display_health
  end
  def pet
    @health = health + 5
    puts "my health is now #{@health}"
    self
  end
  def walk
    @health = health - 1
    puts "my health is now #{@health}"
    self
  end
  def run
    @health = health - 10
    puts "my health is now #{@health}"
    self
  end
end

kai = Dog.new

kai.pet.pet.run.walk.display_health
