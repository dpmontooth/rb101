# write a method that takes one argument (string) and returns new string
# with words in reverse order

# input: string
# output: string with words in reverse order

# data type: array of words in given string

# algorithm ------
# define method with one string as input parameter
# split string and assign result to variable
# reverse sort string and assign to return variable or mutate original array
# return reversed string

def reverse_sentence(str)
  words_array = str.split.reverse.join(' ')
  words_array
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
