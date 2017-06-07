#1.
def Sum_gt10(arr1)
  gt_10 = []
  sum = 0
  (0..arr1.length-1).find_all {
    |i|
    sum = sum + arr1[i]
    if arr1[i] > 10
      gt_10[i] = arr1[i]
    end
  }
  print sum
  return gt_10
end

arr1 = [3,5,1,2,7,9,8,13,25,32]
puts Sum_gt10(arr1)


persons_array = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
puts "printing persons shuffled array:"
persons_array.shuffle.each{ |person| puts person}
puts "Name longer than 5:"
puts persons_array.select { |person| person.length > 5}

letters_array = ("a".."z").to_a
puts letters_array.shuffle.last
puts letters_array.shuffle.first

shuffled = letters_array.shuffle
puts "#{shuffled.first} if a vowel" if['a', 'e', 'i', 'o', 'u'].include? shuffled.first

#generate an array with 10 random numbers between 55-100
random_array = []
10.times { random_array << rand(55..100) }
print random_array.sort
puts random_array.max
puts random_array.min

str = ""
5.times { str << rand(65..90).chr }
puts str

# Generate an array with 10 random strings that are each 5 characters long
string_array = []
10.times do
  str = ""
  5.times { str << rand(65..90).chr }
  string_array << str
end
puts string_array
