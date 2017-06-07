def print_hash(list)
  puts "you have #{list.count} names in the list"
  list.each do |list|
    puts "the name is #{list[:first_name]} #{list[:last_name]}"
  end
end


a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
list = [a, b, c, d, e]
print_hash(list)
