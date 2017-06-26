class AppleTree
  attr_accessor :age
  attr_reader :height, :apple_count

  def initialize(age, height, apple_count)
    @age = age
    @height = height
    @apple_count = apple_count
  end

  def year_gone_by
    @age += 1
    @height *= 1.1

    if 3 < self.age and self.age < 11
      @apple_count += 2
    end
    return self
  end

  def pick_apples
    @apple_count = 0
    return self
  end


end
