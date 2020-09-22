# write a program that asks user to enter integer greater than 0.  Then asks if
# user wants to determine sum or product of numbers between 1 and integer.

# input: integer greater than 0, s or p to identify sum or product calculation
# respectively

# output: sum or product of integers from 1 to integer value entered by user

# algorithm:
# prompt user for input
# assign input to variable

# prompt user for sum or product selection
# assign user input to variable sum_or_prod
# initialize array from 1 to integer input by user

puts "Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
selection = gets.chomp

int_array = []
1.upto(number) {|num| int_array << num}

if selection == 'p'
  product = int_array.reduce(:*)
  puts "The product of the integers between 1 and #{number} is #{product}"
elsif selection == 's'
  sum = int_array.reduce(:+)
  puts "The sum of the integers between 1 and #{number} is #{sum}"
end
