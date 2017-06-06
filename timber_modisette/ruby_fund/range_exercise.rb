# x = (1..5)
#
# puts "Class name: #{x.class}"
# puts "It does include 3!" if x.include? 3
# puts "the last number of this range is " + x.last.to_s
# puts "the maximum number of this range is " + x.max.to_s
# puts "the minimum number of this range is " + x.min.to_s
#
# y = ("a".."z")
# puts y.to_a.shuffle.to_s.class
#
#
# list = [1,2,3,4,5,6,7,8]
#
# for x in list
#   puts x
# end
# list = [1,2,3,4,5]

# puts list.select { |elem| elem.even?  }
puts Array.new(4,2).reject { |elem| elem.even?  }

puts (1..5).to_a
