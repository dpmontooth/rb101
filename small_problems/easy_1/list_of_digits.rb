# write method that takes one argument (positive integer), and returns list of
# digits in the number

# input: positive integer
# output: array containing list of each integer in original number

# algorithm
# define method taking in one positive integer as parameter value
# split given integer into array of component integers

def digit_list(int)
  char_list = int.to_s.split('')
  int_list = char_list.map { |str| str.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]
