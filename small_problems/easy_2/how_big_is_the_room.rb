# write program to request user input of room length and width in meters
# and display result in square meters and square feet.

# input: user integer input for length and width
# output: area of room in square meters and square feet

# algorithm:
# request user input for length of room in meters, assign to variable
# request user input for width of room in meters, assign to variable

SQMETERS_TO_SQFEET = 10.7639

puts '==> Enter the length of the room in meters: '
length = gets.to_f

puts '==> Enter the width of the room in meters: '
width = gets.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{square_meters} " + \
     "square meters (#{square_feet} square feet)."
