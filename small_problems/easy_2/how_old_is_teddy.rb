# build a program that randomly generates and prints Teddy's age.
# To get the age, you should generate a random number between 20 and 200

# input: none
# output: string stating teddy's age

# algorithm:
# assign random number between 20 and 200 to age variable
# interpolate age variable to string stating teddy's age


age = rand(20..200)
puts "Teddy is #{age} years old!"
