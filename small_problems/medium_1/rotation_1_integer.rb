
def rotate_integer(int)
  working_variable = int.to_s[1..2] + int.to_s[0]
  working_variable.to_i
end

x = 123
p rotate_integer(x)
p x
