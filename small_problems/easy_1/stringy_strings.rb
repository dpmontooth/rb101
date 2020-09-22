# write method that takes a positive integer and returns a string of alternating
# 1's and 0's always starting with 1.  The length of the string should match the
# the given integer

# input: Single positive integer
# output: String of alternating 1's and 0's in length to match input integer.
#         Always starting with 1.

# algorithm-------
# define method with single integer parameter as input
# initiate receiving array
# iterate through loop to assign 1 on zero and even number iterations to return
# array, and 0 on odd number iterations.
# join return array into string

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
