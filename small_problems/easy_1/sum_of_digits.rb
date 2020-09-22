# write method taking one positive integer as input and returns sum of digits

# input: positive integer
# output: integer sum of digits

# algorithm:
# define method with single integer parameter input
# split integer passed into method
# reduce to sum all elements
# return sum

def sum(number)
  int_array = number.to_s.split('').map {|num| num.to_i}
  sum_of_digits = int_array.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
