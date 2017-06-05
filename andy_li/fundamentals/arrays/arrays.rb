arr_a = ["Coding", "Dojo", "working", "on", "Ruby"];
arr_b = (0..9).to_a

# puts arr_a.at(0)
# puts arr_a.fetch(1)

puts arr_a.delete("on")
puts arr_a.reverse()
puts arr_b.length
puts arr_a.sort()
# puts arr_b.slice(0, 5)
puts arr_b.shuffle()
puts arr_a.join("+")
puts arr_a.insert(3, "on")

puts arr_a.values_at(1, 3)
puts arr_a.values_at(0..5)
arr_a.each{ |val| puts val }
