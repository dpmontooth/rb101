
require 'pry'

def rotate_string(string)
  binding.pry
  working_string = string.split('')
  return_string = working_string[1..-1] + [working_string[0]]
  return_string.join
end

p rotate_string("help")
