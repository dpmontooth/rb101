# program to ask for user's name.  Program will greet user.  If user writes
# "name!" then computer yells back to the user.

# input: user's name
# output: greeting in lower or upper case if no bang, or a bang is present
# respectively

# algorithm:
# prompt user for name
# store name in variable as string
# check for bang character
# if bang character present return upcase greeting string with user name
# else return greeting string with user name

print "What is your name?"
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
