def prompt(message)
  puts "=> #{message}"
end

def valid_name?(name)
  ('a'..'z').cover?(name.chr)
end

def valid_loan_amount?(amount)
  amount.to_i > 0
end

def valid_apr?(rate)
  (rate.to_f > 0) && (rate.to_f < 100)
end

def valid_duration?(duration)
  duration.to_i >= 1
end

def calculate_installment(principal, interest, duration)
  (principal * interest) / (1 - ((1 + interest)**(-1 * duration)))
end

prompt 'Welcome to the Loan Calculator. Please enter your name :'

name = ''
loop do # Get user's name
  name = gets.chomp
  if valid_name?(name)
    break
  else
    prompt 'Please enter a valid name'
  end
end

prompt "Hello #{name}!"

loop do
  loan_amount = ''
  loop do
    prompt 'Please enter the loan amount : '
    loan_amount = gets.chomp
    if valid_loan_amount?(loan_amount)
      break
    else
      prompt 'The loan amount you entered is not valid'
    end
  end

  apr = ''
  loop do
    prompt 'Please enter the Annual Percentage Rate : '
    apr = gets.chomp
    if valid_apr?(apr)
      break
    else
      prompt 'The Annual Percentage Rate you entered is not valid.'
    end
  end

  duration_in_years = ''
  loop do
    prompt 'Please enter the duration in years : '
    duration_in_years = gets.chomp
    if valid_duration?(duration_in_years)
      break
    else
      prompt 'The duration you entered is not valid.'
    end
  end

  monthly_interest = (apr.to_f / 100.0) / 12.0

  duration_in_months = duration_in_years.to_i * 12

  monthly_payment =
    calculate_installment(loan_amount.to_i,
                          monthly_interest, duration_in_months)

  prompt 'The monthly interest rate : '
  prompt "#{monthly_interest * 100}%"

  prompt 'Duration in months : '
  prompt duration_in_months.to_s

  prompt 'Monthly Payment : '
  prompt format("%.2f", monthly_payment)

  calculate_again = ''
  loop do
    prompt 'Do you wish to make another calculation?(y/n)'
    calculate_again = gets.chomp
    if %w(y n yes no).include?(calculate_again)
      break
    else
      puts "Please enter either 'y' or 'n'"
    end
  end

  break if %w(n no).include?(calculate_again)
end

prompt 'Thank you for using the loan calculator. Good Bye!'
