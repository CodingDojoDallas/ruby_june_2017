def one 
	arr = [3,5,1,2,7,9,8,13,25,32] 
	print arr.reduce(:+)
	p arr.find_all {|i| i > 10}
end
#one
def two
	arr = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
	print arr.shuffle
	p arr.find_all {|i| i.length > 5}
end
#two
def three
	arr = ('a'..'z').to_a.shuffle
	print arr
	vowels = ['a','e','i','o','u']
	if vowels.include?(arr.first)
		print 'message'
	else
		print arr[0]
	end
	p arr.last
end
#three
def four
	p Array.new(10) { rand(55..100)  }
end
#four

def five
	arr = Array.new(10) { rand(55..100) }.sort
	print arr
	puts "min: #{arr.min}"
	puts "max: #{arr.max}"
end
#five
def six
	string = ''
	(0..5).collect { 
		|i|
		string[i] = (65+rand(26)).chr
	}
	return string
end
six
def seven
	p (1..10).collect {six}
end
seven
