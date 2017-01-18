VALID_CHOICES = %w(rock paper scissors).freeze

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  ((first == 'rock') && (second == 'scissors')) ||
    ((first == 'paper') && (second == 'rock')) ||
    ((first == 'scissors') && (second == 'paper'))
end

def display_result(player, computer)
  if win?(player, computer)
    prompt 'You won!'
  elsif win?(computer, player)
    prompt 'Computer won!'
  else
    prompt "It's a draw!"
  end
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
  display_result(choice, computer_choice)

  prompt 'Do you want to play again?'
  play_again = gets.chomp
  break unless play_again.downcase.start_with?('y')
end

prompt 'Thank you for playing. Good Bye!'
