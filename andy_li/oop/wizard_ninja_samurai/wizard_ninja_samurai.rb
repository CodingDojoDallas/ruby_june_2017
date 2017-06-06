require_relative "../human/human"

class Wizard < Human
  def initialize()
    super
    @health, @intelligence = 50, 25
  end

  def heal()
    @health += 10
    return self
  end

  def fireball(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 20
    end

    return self
  end

end


class Ninja < Human
  def initialize()
    super
    @stealth = 175
  end

  def steal(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
      self.health += 10
    end
    return self
  end

  def get_away()
    @health -= 15
    return self
  end
end


class Samurai < Human
  @@num_sam = 0
  def initialize()
    super
    @health = 200
    @@num_sam += 1
  end

  def death_blow(obj)
    if obj.class.ancestors.include?(Human)
      obj.health = 0
    end
    return self
  end

  def meditate()
    @health = 200
    return self
  end

  def how_many()
    p @@num_sam
    return self
  end

end

wiz1 = Wizard.new
nin1 = Ninja.new
sam1 = Samurai.new
sam2 = Samurai.new

p nin1
wiz1.heal.fireball(nin1)
p nin1

p sam1
nin1.steal(sam1)
p sam1
p nin1.get_away

sam1.death_blow(nin1)
p nin1

p sam1.meditate
sam2.how_many
