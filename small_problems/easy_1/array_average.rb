# write method that takes one array containing integers as input, and returns
# average of all numbers in the array.  The array will never be empty and
# numbers will always be positive integers. Result should be integer.

# input: array of integers
# output: integer average of all numbers in the array
# data type: array

# algorithm:
# define method taking in single integer array as input parameter
# calculate average of all numbers in array
#  add all values in array and assign result to sum variable
#  divide sum variable by size of input array

def average(arr)
  sum = 0
  arr.each do |num|
    sum += num
  end
  average = (sum / arr.size)
end

puts average([1, 6]) == 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
