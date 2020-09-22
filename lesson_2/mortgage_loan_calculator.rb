# program to calculate mortgage / car loan payment given three pieces of
# information provided by the user: loan amount, APR, and loan duration

# input: loan amount as float, APR as integer, loan duration as integer
# output: monthly interest rate as float, loan duration in months as integer,
#         monthly payment as float

# algorithm:
# => greet user
# => request loan amount in USD
# => validate input
# => set variable loan_amount to value input by user

# => request annual percentage rate as integer representing percent APR
# => validate input
# => set variable apr to value input by user

# => request the duration of the loan in years
# => validate input
# => set variable loan_duration to value input by user

# => calculate monthly interest rate
# => calculate loan duration in months
# => calculate monthly payment

def prompt(message)
  puts "=> #{message}"
end

prompt("Welcome to the Payment Calculator 3000!")

loop do # main loop inside program begins here
  loan_amount = ''
  loan_duration = ''
  apr = ''

  loop do
    prompt("Please enter your loan amount in USD")
    loan_amount = gets.chomp

    if loan_amount.empty? || loan_amount.to_f < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

  loop do
    prompt("Please enter Annual Percentage Rate (e.g. 15 for 15%)")
    apr = gets.chomp

    if apr.empty? || apr.to_f < 0
      prompt("Must enter positive number")
    else
      break
    end
  end

  loop do
    prompt("Please enter loan duration in years")
    loan_duration = gets.chomp

    if loan_duration.empty? || loan_duration.to_i < 0
      prompt("Enter a valid number")
    else
      break
    end
  end

  loan_amount = loan_amount.to_f
  p loan_amount
  apr = apr.to_f / 100
  p apr
  loan_duration = loan_duration.to_i
  p loan_duration

  monthly_interest = (apr / 12)
  duration_in_months = loan_duration * 12
  monthly_payment = loan_amount * (monthly_interest /
    (1 - (1 + monthly_interest)**(-duration_in_months)))

  prompt("Monthly payment is $#{format('%.2f',monthly_payment)}")

  prompt("Would you like to perform another calculation? (y = yes, n = no)")
  break unless gets.chomp.downcase.start_with?('y')

end # main loop end

prompt("Thank you for using the Payment Calculator 3000!  Goodbye!")
