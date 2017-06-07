class Fixnum
  def who_am_i
    puts self
  end
end

class String
  def who_am_i
    puts self
  end
end

# 4.who_am_i
# 15.who_am_i
#
# "piff".who_am_i
# "monic".who_am_i


class Mammal
  def initialize
    puts "i am alive"
    self # this is return self
  end
  def breath
    puts "inhale and exhale"
    self
  end
  def who_am_i
    puts self
    self
  end
end

my_mammal = Mammal.new.who_am_i.breath #to be able to chain you must be return the object (self)
