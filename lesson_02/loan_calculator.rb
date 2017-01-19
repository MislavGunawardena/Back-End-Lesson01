
def prompt(message)
  puts "=> #{message}"
end

def verify_name(name)
  !name.empty?
end

def verify_loan_amount(amount)
  amount.to_i != 0
end

def verify_apr(rate)
  (rate.to_f > 0) && (rate.to_f < 100)
end

def verify_duration(duration)
  duration.to_i >= 1
end

def calculate_monthly_payment(p, j, n)
  (p * j) / (1 - ((1 + j)**(-1 * n)))
end

prompt 'Welcome to the Loan Calculator. Please enter your name :'

name = ''
loop do # Get user's name
  name = gets.chomp
  if verify_name(name)
    break
  else
    prompt 'Please enter a valid name'
  end
end

prompt "Hello #{name}!"

loan_amount = ''
loop do # Get the loan amount
  prompt 'Please enter the loan amount : '
  loan_amount = gets.chomp
  if verify_loan_amount(loan_amount)
    break
  else
    prompt 'The loan amount you entered is not valid'
  end
end

apr = ''
loop do # Get the APR
  prompt 'Please enter the Annual Percentage Rate : '
  apr = gets.chomp
  if verify_apr(apr)
    break
  else
    prompt 'The Annual Percentage Rate you entered is not valid.'
  end
end

duration_in_years = ''
loop do # Get duration in years
  prompt 'Please enter the duration in years : '
  duration_in_years = gets.chomp
  if verify_duration(duration_in_years)
    break
  else
    prompt 'The duration you entered is not valid.'
  end
end

# Calculating monthly interest
monthly_interest = (apr.to_f/100.0) / 12.0

# Calculating duration in months
duration_in_months = duration_in_years.to_i * 12

# Calculating monthly payment
monthly_payment =
  calculate_monthly_payment(loan_amount.to_i,
                            monthly_interest, duration_in_months)
                            
prompt 'The monthly interest rate : '
prompt "#{monthly_interest*100}%"

prompt 'Duration in months : '
prompt "#{duration_in_months}"

prompt 'Monthly Payment : '
prompt "#{monthly_payment}"
