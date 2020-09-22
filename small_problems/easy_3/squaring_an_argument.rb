# method uses multiply method defined in previous small problem to compute
# the square for


def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64
