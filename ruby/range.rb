x = (1..5)

puts "Class name: #{x.class}"
puts "It does inclue 3!" if x.include? 4
puts "It does inclue 3!" if x.include? 5
puts "It does inclue 3!" if x.include? 6
puts "It does inclue 3!" if x.include? 7

puts "The last number of this range is: " + x.last.to_s
puts "The maximum number of this range is: " + x.max.to_s
puts "The minumum number of this range is: " + x.min.to_s

y = ('a'..'z')
puts y.to_a.shuffle.to_s
