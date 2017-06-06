# .delete(key) deletes the key-value pair and returns the value from hsh whose key is equal to key.
hash = {first_name: "Coding", last_name: "Dojo"}
hash.delete :last_name
puts hash

# .empty? => returns true if hash contains no key-value pairs
hash = {}
p hash.empty?

# .has_key?(key) returns true if given key is present
hash = {first_name: "Coding", last_name: "Dojo"}
p hash.has_key? :first_name # => true
p hash.has_key? "first_name" # => false

# .has_value?(value) returns true if given value is present for some key
hash = {first_name: "Coding", last_name: "Dojo"}
p hash.has_value? "Coding" # => true
p hash.has_value? "Bootcamp" # => false
