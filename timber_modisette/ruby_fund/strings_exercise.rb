#anything in single or double quotes is of class String

x = "CodingDojo"

#prings x
puts x

#prints x length
puts x.length

#prints the second index of the string x
puts x[2]

#checks to see if string x includes "dojo" (case sensitive)
puts x.include?("dojo")

#this will only print IF x.include?() returns TRUE
puts "This word has the word Dojo in it" if x.include?("Dojo")


# split, splits the string y into a list on the commas
y = "John, Piff, ramsese, charles, timber"

puts y.split(",")

#emtpy? checks to see if specified thing is empty
r = ""
puts "R is empty " if r.empty?

#in ruby strings are mutable, meaning you can change them, the out put of this is car
str = "bar"
str[0] = "c"
puts str

word = "hello"
#.capitalize, capitalizes the string but NOT permanently!
puts word.capitalize #this prints Hello
puts word #this prints hello

#if you add an exclamation to the end, it will permanently change the string
word.capitalize! #prints Hello
puts word #prints Hello
