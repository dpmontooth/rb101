# problem: write method to rotate last n digits of a number

# input: two integers as parameters - 1st is number and 2nd is number of digits
# to rotate
#
# output: number with last n digits rotated
#
# assumptions: n is always a positive integer
#
# ------algorithm------
# define method to accept two integers as arguments
# 1st number is converted to string then use chars method to break up
# into character array
#
# slice from rightmost digits identified to end of string


def rotate_rightmost_digits(number, n)
p  all_digits = number.to_s.chars
#  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
end

rotate_rightmost_digits(123456, 1)
s
