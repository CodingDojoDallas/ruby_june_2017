#sum all numbers in arr
# arr = [3,5,1,2,7,9,8,13,25,32]
# greater_than = arr.reject { |number| number < 10}
# sum = arr.reduce(:+)
# puts greater_than
# puts sum



#shuffle arr, print names in arr, print names with 5 or more characters
# arr = ["John","kb","oliver","cory","matthew","chistopher"]
# arr.shuffle
# arr.each { |name| puts name  }
# temp = arr.find_all {|name| name.length > 5}

# abc = ("a".."z").to_a
# abc = abc.shuffle
# puts abc.first
# puts abc.last
# puts "#{abc.first} is a vowel!" if vowels = ["a","e","i","o","u","y"].include?(abc.first)

# random = []
# 10.times {random << rand(55..100)}
# puts random.sort

#
# str = ""
# 5.times {str << rand(65..90).chr}
# puts str

# string_arr = []
# 10.times do
#   str = ""
#   5.times { str << rand(65..90).chr }
#   string_arr << str
# end
# puts string_arr
