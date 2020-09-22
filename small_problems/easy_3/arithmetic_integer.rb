# program to prompt user for two positive integers and print results of
# defined operations onto the screen.  Operations to include addition,
# subtraction, product, quotient, remainder and power.  Input does not have to
# be validated

# input: two positive integers
# output: result of operations on the two integers printed to screen

# algorithm:
# prompt user for input of first number
# assign user input to variable first_number
# prompt user for second number
# assign user input to variable second_number

def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number:")
first_number = gets.chomp.to_i
prompt("Enter the second number:")
second_number = gets.chomp.to_i

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{first_number ** second_number}")
