#print 1-255
	#1.upto(255) { |i| print i, " " }
#print odd numbers 1-255
	#puts 1.upto(255).find_all {|i| i%2 != 0}
#print sum
def print_sum(n)
	sum = 0
	1.upto(n) { |i| sum += i}
	p sum
end
# print_sum(255)

def iter_array(arr)
	arr.each { |elem| print elem }
end
# iter_array([1,2,3])

def find_max(arr)
	arr.max
end
# puts find_max([1,2,3])

def get_avg(arr)
	p arr.reduce(:+)/ arr.count.to_f
end
# get_avg([1,4,6])
def get_odds
	1.upto(255).find_all {|i| i%2 != 0}
end
# print get_odds
def greater_than_y(arr, y)
	count = 0
	arr.each {|i| count+=1 if i > y}
	return count
end
# or
def greater_than_x(arr, x)
	arr.count {|i| i > x}
end
#puts greater_than_y([1,2,3,5,6], 3)
def square_vals(arr)
	arr.map! {|i| i*i}
	return arr
end
# puts square_vals([1,5,10,-2])
def eliminate_neg(arr)
	arr.collect! {
		|i| 
		if i<0
			i=0
		else
			i=i
		end	
	}
	return arr
end
# puts eliminate_neg([1,-7,5])
def rotate(arr)
	arr.rotate!(1)
	arr[-1] = 0
	p arr
end
# rotate([1,2,3,4,5])
def negative_to_dojo(arr)
	arr.map! {
		|i|
		if i<0
			i = "Dojo"
		else
			i=i
		end
	}
	p arr
end
negative_to_dojo([1,2,-3,-5])