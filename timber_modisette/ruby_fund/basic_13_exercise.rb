#print 1 - 255
# for i in 1..255
#   puts i
# end


#print odd number 1 - 255
# for i in (1..255)
#   puts i if i % 2 == 1
# end

#print sum
# sum = 0
# for i in (0..255)
#   puts "new number: #{i} Sum: #{sum + i}"
#   sum = sum + i
# end

#iterage an array
# x = [1,3,5,7,9,13]
#
# for i in x
#   puts i
# end

#find max
# def find_max(list)
#   max = list[0]
#   for i in list
#     if i > max
#       max = i
#     end
#   end
#   puts max
# end
#
# list = [-1,-2,3,4,-9]
# find_max(list)

#get average
# def find_average(arr)
#   sum = 0
#   count = 0
#   for i in arr
#     sum = sum + i
#     count = count + 1
#   end
#   puts max = sum / count
# end
#
# arr = [3,3,3]
# find_average(arr)

#array with odd numbers
# y = []
# for i in (1..255)
#   if i % 2 == 1
#     y.push(i)
#   end
# end
# puts y

#greater than Y
# def greater_than(arr,num)
#   list = []
#   for i in arr
#     if i > num
#       list.push(i)
#
#     end
#   end
#   puts list
# end
# arr = [-1,3,44,23,5]
# greater_than(arr,0)

#square the values AND
#eliminate negative numbers
# arr = [-1,-2,2,3,4]
# puts arr.each_index { |index| arr[index] = arr[index] * arr[index]}
# puts arr.each_index { |index| arr[index] = 0 if arr[index] < 0 }

#max min and sum
# arr = [1, 5, 10, -2]
# def max_min_avg(arr)
#   new_arr = []
  avg = arr.reduce(:+) / arr.length.to_f
#   new_arr.push('max:',arr.max,'min:',arr.min)
#   new_arr.push('avg:',avg)
#   puts new_arr
# end
#
# max_min_avg(arr)
#rotate arr
# def rotate_arr(arr)
#   arr1 = arr.rotate(1)
#   arr1[arr1.length-1] = 0
#   puts arr1
# end


# arr = [1,5,10,7,-2]
# rotate_arr(arr)
#
# #number to string
# def number_string(arr)
#   arr.each_index {|index| arr[index] = "dojo" if arr[index] < 0}
#   puts arr
# end
#
# arr = [-1,2]
# number_string(arr)
