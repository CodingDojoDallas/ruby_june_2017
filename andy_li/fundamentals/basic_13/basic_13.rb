# Print 1-255
(1..255).each() { |val| puts val }

# Print odd numbers between 1-255
(1..255).each { |val| puts val if val.odd? }

# Print Sum
puts (0..255).inject(:+)

# Iterating through an array
x = [1,3,5,7,9,13]
x.select() { |val| puts val }

# Find Max
x = [-3,-5,-7]
puts x.max()

# Get Average
x = [2, 10, 3]
puts x.inject(:+)/x.length

# Array with Odd Numbers
print (1..255).select { |val| val % 2 == 1 }

# Greater Than Y
def gty(arr, y)
  count = 0
  for val in arr
    if val > y
      count += 1
    end
  end
  return count
end

arr = [1, 3, 5, 7]
y = 3
puts gty(arr, y)

# Square the values
x = [1, 5, 10, -2]
puts x.map { |val| val**2 }

# Eliminate Negative Numbers
def elim_neg_num(arr)
  for i in 0..arr.length - 1
    if arr[i] < 0
      arr[i] = 0
    end
  end
  return arr
end

x = [1, 5, 10, -2]
puts elim_neg_num(x)

# Max, Min, and Average
x = [1, 5, 10, -2]
puts x.max()
puts x.min()
puts x.inject(:+)/x.length.to_f

# Shifting the Values in the Array
def shift_val(arr)
  for i in 0..arr.length - 2
    arr[i] = arr[i+1]
  end
  arr[-1] = 0
  return arr
end

x = [1, 5, 10, 7, -2]

puts shift_val(x)

# Number to String
def num_to_str(arr)
  for i in 0..arr.length - 1
    if arr[i] < 0
      arr[i] = "Dojo"
    end
  end
  return arr
end

x = [-1, -3, 2]
print num_to_str(x)
