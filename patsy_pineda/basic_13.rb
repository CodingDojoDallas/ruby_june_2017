#THE BASIC 13

#1. Print 1-255
# num = 1
# while num <= 255
# 	puts num
# 	num +=1
# end

#2. Print odd numbers between 1-255
# num =1
# while num <= 255
# 	puts num unless num.even?
# 	num +=1
# end

#3. Print Sum
# num = 0
# sum = 0
# while num <= 255
# 	puts "New number: #{num} Sum:#{sum}"
# 	num +=1
# 	sum = sum + num
# end

#4. Iterating tough an array
# def iterate(arr)
# 	for i in 0...arr.length
# 		puts arr[i]
# 	end
# end
# iterate([2, 3, 6, 8, 0])

#5.Find Max
# def findMax(arr)
# 	puts arr.max
# end
# findMax([-2, -5, -6, -8, -10])

#6. Get Average
# def getAverage(arr)
# 	sum = 0
# 	for i in 0...arr.length
# 		sum = sum + arr[i]
# 	end
# 	puts "The average is #{sum/arr.length}"
# end
# getAverage([2, 10, 3])

#7. Create an array with only odd numbers 1-255
# def createArr
# 	y = (1..255).to_a.reject {|elem| elem.even? }
# 	puts y
# end
# createArr()

# 8. Greater than y
# def greaterThanY(arr, val)
# 	count = 0
# 	for i in 0...arr.length
# 		if arr[i] > val
# 			count +=1
# 		end
# 	end
# 	puts count
# end
# greaterThanY([1, 4, 6, 8, 9], 0)

#9. Square the values
# def squareValues (arr)
# 	for i in 0...arr.length
# 		arr[i] = arr[i] * arr[i]
# 	end
# 	puts arr
# end
# squareValues([1, 2, 3, 4])

#10.  Eliminate Negative Numbers--replace with 0.
# def noNegs(arr)
# 	puts arr
# 	for i in 0...arr.length
# 		if arr[i] < 0
# 			arr[i] = 0
# 		end
# 	end
# 	puts arr
# end
# noNegs([1, 5, -7, -10, 1])

#11. Max, Min and Average
# def maxMinAvg(arr)
# 	sum = 0
# 	for i in 0...arr.length
# 		sum = sum + arr[i]
# 	end
# 	puts sum
# 	puts "The average is #{sum/arr.length}"
# 	puts "The min is #{arr.min}"
# 	puts "The max is #{arr.max}"
# end
# maxMinAvg([6, 4])

#12. Shifting
# def shiftArr(arr)
# 	print arr
# 	arr.shift
# 	arr.push(0)
# 	print arr
# end
# shiftArr([3, 1, 7, 9, 10])

# #13. Number to String
# def numtoString(arr)
# 	puts arr
# 	for i in 0...arr.length
# 		if arr[i] < 0
# 			arr[i] = "Dojo"
# 		end
# 	end
# 	puts arr
# end
# numtoString([1, 5, -7, -10, 1])