list = ["ants","bear","cats"]
# checks the array and verifies if any word in the array is <= 3
# puts list.any? { |word| word.length <= 3}

# list.each { |word| print word, "--"}

#multiplies each element in the range by itself
# puts (1..4).collect { |i| i*i}

# i is defined as the iterator
# i iterates through the range and finds a number that can evenly be divided by 5 and 7
(1..10).detect { |i| i % 5 == 0 and i % 7 == 0}
(1..100).detect { |i| i % 5 == 0 and i % 7 == 0}

#.find will set i as an iterator to iterate through the defined range
# i will find_all numbers within range that are evenly divided by 3
(1..100).find_all { |i| i % 3 == 0}

#.reject is the oppisite of find_all.
#.reject will find all numbers that DO not evaluate to true
(1..10).reject { |i| i % 3 == 0}


#another iteration. that is all INCLUSIVE on left and right
5.upto(10) { |i| print i," "}
