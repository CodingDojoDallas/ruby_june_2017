# def test
#   puts "you are in the method"
#   yield
#   puts "you are back in the method"
#   yield
# end
#
# test {puts "you are in the block"}
#
#
# def test
#   yield 5
#   puts "you are in the method test"
#   yield 100
# end
# test { |i| puts "you are in the block #{i}"}

# def square(num)
#   puts "num is #{num}"
#   puts "yeild(num) has a value of #{yield(num)}"
# end
# square(5) do |i|
#   i*i
# end
