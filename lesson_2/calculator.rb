# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

def prompt(message)
  puts("=> #{message}")
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt("Make sure you use a valid name")
  else
    break
  end
end

prompt("Hi #{name}")

operator = ''

loop do # main loop
  first_number = 0

  loop do
    prompt("What's the first number?")
    first_number = gets.chomp

    if number?(first_number)
      break
    else
      prompt("That number is not valid...enter another number")
    end
  end

  second_number = 0

  loop do
    prompt("What's the second number?")
    second_number = gets.chomp

    if number?(second_number)
      break
    else
      prompt("That number is not valid...enter another number")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
    MSG

  prompt(operator_prompt)

  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers.")

  result = case operator
           when '1'
             first_number.to_i + second_number.to_i
           when '2'
             first_number.to_i - second_number.to_i
           when '3'
             first_number.to_i * second_number.to_i
           when '4'
             first_number.to_f / second_number.to_f
           end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using calculator.  Good bye!")
