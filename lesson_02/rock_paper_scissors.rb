VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts "=> #{message}"
end

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')} : "
    choice = gets.chomp
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt('That is not a valid choic.')
    end
  end
  
  computer_choice = VALID_CHOICES.sample
  
  prompt "You chose: #{choice}; computer chose: #{computer_choice}"
  
  if ((choice == 'rock') && (computer_choice == 'scissors')) ||
      ((choice == 'paper') && (computer_choice == 'rock')) ||
      ((choice == 'scissors') && (computer_choice == 'paper'))
    prompt 'You won!'
  elsif choice == computer_choice
    prompt "It's a draw!"
  else
    prompt 'Computer won!'
  end
  
  prompt 'Do you want to play again?'
  play_again = gets.chomp
  break unless play_again.downcase.start_with?('y')
end

prompt 'Than you for playing. Good Bye!'
