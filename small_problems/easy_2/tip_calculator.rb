# program to ask for bill amount, tip rate as percentage, and calculate tip and
# total bill amount

# input: bill amount as float and tip rate as integer
# output: tip amount as float value and total bill as float value

# algorithm:
# prompt for bill
# convert input to float and assign to variable "subtotal"
# prompt for tip rate
# convert input to integer and assign to variable "tip_rate"
# calculate tip
## divide tip rate by 100 and multiply by "subtotal"
## assign result to variable tip round(2)
# calculate total
## add "tip" value to "subtotal" value and assign result to variable "total"
# output tip and total to screen with indication of currency "$"

puts "what is the bill?"
subtotal = gets.to_f

puts "What is the tip percentage?"
tip_rate = gets.to_f

tip = (tip_rate / 100) * subtotal

total = tip + subtotal

puts "The tip is $#{tip}"
puts "The total is $#{total}"
