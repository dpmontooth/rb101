# program to solicit 6 numbers from the user then print message that describes
# whether or not 6th number appears amongst the first 5 numbers.

# input: user input integer value 6 times
# output: statement to affirm or deny if last number appeared in first 5

# algorithm:
# initialize variable user_number as empty array
# prompt user for input of first number
# add user input to user_number array
# prompt user for input of second number
# add user input to user_number array
# repeat through 5th number
# prompt for 6th number and assign to variable for comparison to user_input
# array

user_number = []
puts "==> Enter the 1st number:"
user_number << gets.chomp.to_i
puts "==> Enter the 2nd number:"
user_number << gets.chomp.to_i
puts "==> Enter the 3rd number:"
user_number << gets.chomp.to_i
puts "==> Enter the 4th number:"
user_number << gets.chomp.to_i
puts "==> Enter the 5th number:"
user_number << gets.chomp.to_i
puts "==> Enter the last number:"
last_number = gets.chomp.to_i
if user_number.include?(last_number)
  puts "The number #{last_number} appears in #{user_number}"
else
  puts "The number #{last_number} does not appear in #{user_number}"
end
