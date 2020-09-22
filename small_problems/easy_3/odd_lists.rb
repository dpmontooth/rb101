# Write a method that returns Array containing every odd # element of argument
# Array passed in to method.

# input: array containing integers or strings
# output: array displaying odd elements (1st, 3rd, 5th, etc.)

# algorithm:
# define method that accepts single array argument
# initialize empty array to recieve values for return
# use each with index to assign elements at even indexes to return array

def oddities(user_array)
  odd_position = []
  user_array.each_with_index do |element, index|
    next unless index.even?
    odd_position << element
  end
  return odd_position
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
