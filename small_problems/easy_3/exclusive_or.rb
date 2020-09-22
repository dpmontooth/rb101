# write exclusive or function to return boolean true if either of two arguments
# is true (only one of the two arguments)

def xor?(arg1, arg2)
  return true if arg1 && !arg2
  return true if arg2 && !arg1
  false
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)
