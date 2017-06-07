require_relative "mammal"

class Lion < Mammal
  attr_accessor :health
  def initialize
    @health = 170
  end
  def fly
    @health -= 10
    puts "after flying my health is now #{@health}"
    self
  end
  def attack_town
    @health -= 50
    puts "after ravaging your town my health has go down #{@health}"
    self
  end
  def eat_humans
    @health += 20
    puts "After eating a tasty human my health is #{@health}"
    self
  end
  def display_health
    puts "i am a LION"
    super
  end
end

henry = Lion.new
#
puts henry.fly.fly
#
# henry.display_health
