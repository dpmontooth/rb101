# input: array with integer or string objects
# output: 'rotated' new array with first element moved to last index and other
#   elements shifted to position n - 1

# -----algorithm------
# define method to accept given array as argument

# original array assigned to new 'working' variable

# shift method called on array object in working variable to remove and return
# the first element from the array (destructive action)
#
# the returned element is assigned to new variable and then appended to array
# within working variable
# (may be possible to chain methods and append the returned value in same line)
#
# working variable returned implicitly as last line/evaluated statement in
# method
require 'pry'

def rotate_array(original_array)
  binding.pry
  working_array = original_array.dup
  working_array << working_array.shift
  working_array
end

# -----Test Cases-----
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]
p x == [1, 2, 3, 4]
