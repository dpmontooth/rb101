# write method that takes single string as parameter and returns the given
# string with words containing five or more characters reversed.

# input: string
# output: same string with words > 5 characters reversed
# assumptions: input string contains only letters and spaces.
#              spaces should be included only when more than one word is present

# algorithm-----
# define method with single string parameter as input
# split string into array of words
# iterate over each element and assign to new array
# if element >= 5 characters reverse before assigning to new array
# if array size > 1 join new array with space delimeter else leave alone

def reverse_words(str)
  result_array = []
  str.split.each do |word|
      if word.size >= 5
      result_array << word.reverse
    else
      result_array << word
    end
  end
  if result_array.size > 1
    answer = result_array.join(' ')
  else
    answer = result_array.join('')
  end
  answer
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
