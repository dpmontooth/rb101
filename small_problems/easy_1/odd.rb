# write method taking one integer argument (positive, negative or zero).
# the method should return true if number's absolute value is odd.
# assumption: argument is valid integer value

# input: valid integer may be positive, negative, or zero
# output: boolean to identify absolute value is odd (true) or even (false)

# algorithm:
# define method (is_odd?) taking in one integer parameter
# identify absolute value of integer passed into method
# identify if absolute value is odd or even

def is_odd?(int)
  int.abs % 2 == 1
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)
