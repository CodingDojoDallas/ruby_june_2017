# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (e.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)
#
# def sum(arr)
#   return arr.inject(:+)
# end
#
# x = [3,5,1,2,7,9,8,13,25,32]
# puts sum(x)
# puts sum(x.find_all { |num| num > 10 })


# Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.
#
# x = %w[John, KB, Oliver, Cory, Matthew, Christopher]
# p x.shuffle().find_all(){ |name| name.length > 5 }


# Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message.
#
# x = ("a".."z").to_a
# x.shuffle!
# p x[-1]
# p x[0]
#
# vowels = ["a", "e", "i", "o", "u"]
# for val in vowels
#   if x[0] == val
#     puts "#{x[0]} is a vowel."
#   end
# end
#
# puts "#{x[0]} is a vowel." if vowels.include?x[0]


# Generate an array with 10 random numbers between 55-100.
#
# rand_arr = []
# 10.times { rand_arr << rand(55..100) }
#
# p rand_arr


# Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the array. Next, display the minimum value in the array as well as the maximum value.
#
# p rand_arr.sort()
# p rand_arr.min()
# p rand_arr.max()


# Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character).
#
rand_str = ""
5.times { rand_str << (rand(65...91)).chr }
p rand_str

# Generate an array with 10 random strings that are each 5 characters long
rand_str_arr = []
10.times do
  rand_str = ""
  5.times { rand_str << (rand(65...91)).chr }
  rand_str_arr << rand_str
end
p rand_str_arr
