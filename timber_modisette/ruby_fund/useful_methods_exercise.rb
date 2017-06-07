
#.any
puts ["an", "be", "at"].any? { |word| word.length >= 3 } # => true


#.collect
puts (1..4).collect { |i| i*i } # => [1, 4, 9, 16]
puts (1..4).collect { "cat" } # => ["cat", "cat", "cat", "cat"]


#.detect
puts (1..10).detect { |i| i %5 == 0 and i % 7 == 0 } # => nil
puts (1..100).detect { |i| i %5 == 0 and i % 7 == 0 }


#.find_all
puts (1..10).find_all { |i| i % 3 == 0 } # => [3, 6, 9]


#.reject
puts (1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]
