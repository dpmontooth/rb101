# program to ask for user input of a word or multiple words and return number
# of characters.  Spaces should not be counted as a character.

# input: word or multiple words (data type - string)
# output: statement identifying number of characters in input string

# algorithm:
# prompt user for input of word or multiple words
# assign input to variable
# perform chars method on variable
# return size of variable with chars method applied

puts "Please write word or multiple words:"
user_input = gets.chomp

input_chars = user_input.chars
input_chars.delete(' ')

number = input_chars.size

puts "There are #{number} characters in '#{user_input}'"
