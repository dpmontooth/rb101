=begin
input: two integer arguments passed to method (integer, qty_of_digits_to_rotate)
output: one integer value that has specified number of digits rotated

-----rules-----
rotating single digit integer results in original number being returned
2nd argument passed to method will always be positive integer

---questions---

---algorithm---
define method to accept two integer arguments (int, n)
determine the range of digits from end of integer object assigned to int to rotate
initialize new local variable and assign range of digits identified
invoke rotate_array method from previous exercise
 - pass integer object assigned to new local variable as argument to rotate_array method

=end

require 'pry'

def rotate_array_ls(sliced_array)
  sliced_array[1..-1] + [sliced_array[0]]
end

def rotate_rightmost_array(int, n)
  int_array = int.to_s.chars
  sliced_array = int_array.pop(n)
  rotated_digits = rotate_array_ls(sliced_array)
  combined = int_array + rotated_digits
  combined.join.to_i
end

p rotate_rightmost_array(735291, 1) == 735291
p rotate_rightmost_array(735291, 2) == 735219
p rotate_rightmost_array(735291, 3) == 735912
p rotate_rightmost_array(735291, 4) == 732915
p rotate_rightmost_array(735291, 5) == 752913
p rotate_rightmost_array(735291, 6) == 352917
