# write method that takes two arguments (positive integer and boolean) and
# calculates bonus for given salary.  If boolean is true, bonus is half of
# salary.  If boolean is false, bonus should be 0.

# input: positive integer and boolean
# output: integer

# algorithm------
# define method taking in positive integer and boolean
# check boolean
# if true assign half of salary as bonus
# if false return 0 for bonus
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
