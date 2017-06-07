

module Enumerable
  def xEach
    for i in 0...self.length
      yield(self[i])
    end
  end
end
class Array
   include Enumerable
end
[1,2,3,4].xEach { |i| puts i } # => 1 2 3 4
[1,2,3,4].xEach { |i| puts i * 10 } # => 10 20 30 40
