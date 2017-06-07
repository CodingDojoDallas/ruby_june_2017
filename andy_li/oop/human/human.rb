class Human
  attr_accessor :name, :strength, :intelligence, :stealth, :health

  def initialize()
    # @name = name
    @strength, @intelligence, @stealth, @health = 3, 3, 3, 100
  end

  def attack(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
      p "#{self.name} attacked #{obj.name}"
    end

    return self
  end

  def display_health()
    p @health
    return self
  end

end

# bri = Human.new("bri")
# pats = Human.new("pats")
#
# bri.display_health
# pats.display_health
#
# bri.attack(pats)
# pats.display_health
