puts "hello"
#new lines and white space but does not return like p
print "second way to print"
# prints with no white space and no new lines
p "third way to print"
# p also returns


def test()
	p 'piff'

end

x = test()

puts x


y = 19

if y < 10
	puts "y is less than 10"
elsif y == 10 
	puts 'y is 10'
elsif y > 10
	puts 'y is greater than 10'
end

r = 9
#string interperlation
puts "r is not 10 #{r}" unless r == 10


arr = [1,2,3,4,5]

person = 'piff'

puts person.upcase!

puts person[0]


for i in 0...arr.length
	puts i
end

# left side is always inclusive
# ... exclusive does not print the 5
# .. is inclusive..will print the 5


arr.each{ |n| puts n }





