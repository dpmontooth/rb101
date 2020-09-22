# program to print all odd numbers from 1 to 99, inclusive.  All numbers should
# be printed on separate lines

# input: none
# output: odd numbers from 1 to 99 printed to screen

i = 1
while i <= 99
  puts i if i % 2 == 1
  i += 1
end
