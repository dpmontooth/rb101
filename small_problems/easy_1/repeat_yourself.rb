# write a method that takes two arguments (string, positive integer) and prints
# the string as many times as the integer indicates

# input: string, integer
# output: string printed number of times integer indicates

# algorithm
# define method with two parameter input
# iterate print activity number of times specified by integer

def repeat(str, int)
  int.times { puts str }
end

# example
repeat('Hello', 3)
