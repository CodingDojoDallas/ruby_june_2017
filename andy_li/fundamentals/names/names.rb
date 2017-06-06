def names_print(arr)
  p "You have #{arr.length} names in the 'names' array."
  arr.each do |name|
    p "My name is '#{name[:first_name]} #{name[:last_name]}'"
  end
end

a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
names = [a, b, c, d, e]

names_print(names)
