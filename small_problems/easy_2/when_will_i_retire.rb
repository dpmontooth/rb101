# program to display when user will retire and how many years left to work

# input: User input integer for age, User input integer for retirement age
# output: current year as integer, year user will retire, and years left to work

# algorithm:
# prompt user for age
# convert input to integer and assign to variable "age"
# prompt user for age they would like to retire
# convert input to integer and assign to variable "retirement_age"
# assign current year to variable "current_year"
# assign difference between "retirement_age" and "age" to variable "years_left"
# print string interpolating all calculated values to user

puts "What is your age?"
age = gets.to_i
puts "At what age would you like to retire?"
retirement_age = gets.to_i

current_year = Time.now.year
years_left = retirement_age - age
retirement_year = current_year + years_left

puts "It's #{current_year}.  You will retire in #{retirement_year}. "
puts "You have only #{years_left} years of work to go!"
