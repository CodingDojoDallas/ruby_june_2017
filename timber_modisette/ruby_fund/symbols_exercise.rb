a = "coding"
b = "coding"
c = :dojo
d = :dojo #this is a symbol
puts a.object_id
puts b.object_id
puts c.object_id
puts d.object_id



a = "coding"
b = "coding"
c = :dojo
d = :dojo
puts a.equal?(b) # => false
puts c.equal?(d) # => true

user = {first_name: "Coding", last_name: "Dojo"}
puts user[:first_name] # => "Coding"
