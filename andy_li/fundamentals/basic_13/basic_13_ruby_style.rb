def print_int(n)
  #long way
  # for i in 1..n
  #   puts i
  # end

  #ruby way
  1.upto(n){ |i| puts i }
end
# print_int(255)

def print_odds(n)
  #the long way
  # for i in 1...n
  #   if i % 2 != 0
  #     puts i
  #   end
  # end
  1.upto(n){
    |i|
    if i % 2 != 0
      puts i
    end
  }
  # 1.upto(n){ |i| puts i if i % 2 != 0}
end
# print_odds(255)

def print_sum(n)
  sum = 0
  1.upto(n){
    |i|
    sum += i
    puts "New Number: #{i}, Sum: #{sum}"
  }
end
# print_sum(255)

def iterate_array(arr)
  arr.each{ |elem| puts elem }
end
# iterate_array([1,2,3,4,5])

def find_max(arr)
  #the long way
  # max = arr[0]
  # for i in 1...arr.count
  #   # puts arr[i]
  #   if arr[i] > max
  #     max = arr[i]
  #   end
  # end
  # return max

  #ruby way
  arr.max
end
# puts find_max([1,2,3,4,5])

def get_avg(arr)
  # sum = 0
  # for i in 0...arr.count
  #   sum += arr[i]
  # end
  # sum / arr.count.to_f

  arr.reduce(:+) / arr.count.to_f

end
# puts get_avg([1,2,3,4,5,6])

def odd_nums(n)
  (1..n).find_all{ |j| j.odd? }
end

def greater_than_y(arr, y)
  arr.count{ |n| n > y }
end
# puts greater_than_y([1,2,3,4,5], 1)

def remove_odds(arr)
  arr.map{
    |n|
    if n < 0
      n = 0
    else
      n = n
    end
  }
end
# puts remove_odds([-3,3,-3])

def rotate_arr(arr)
  arr.rotate!(1)
  arr[arr.count - 1] = 0
  return arr
end
puts rotate_arr([1,2,3,4,5])
