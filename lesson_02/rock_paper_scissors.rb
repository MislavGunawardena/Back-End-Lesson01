VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  chosen_combination = [first, second]
  winning_combinations = [%w(rock scissors), %w(rock lizard),
                          %w(paper rock), %w(paper spock),
                          %w(scissors paper), %w(scissors lizard),
                          %w(spock rock), %w(spock scissors),
                          %w(lizard paper), %w(lizard spock)]
  winning_combinations.include?(chosen_combination)
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
  user_wins = 0
  computer_wins = 0

  loop do
    choice = ''
    loop do
      prompt "Choose one: #{VALID_CHOICES.join(', ')} : "
      choice = gets.chomp
      %w(r p sc sp l).each_with_index do |short_choice, index|
        choice = VALID_CHOICES[index] if choice == short_choice
      end
      if VALID_CHOICES.include?(choice)
        break
      else
        prompt 'That is not a valid choice!'
        prompt "Enter 'sc' for scissors or 'sp' for spock" if choice == 's'
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt "You chose: #{choice}; computer chose: #{computer_choice}"
    display_result(choice, computer_choice)

    user_wins += 1 if win?(choice, computer_choice)
    computer_wins += 1 if win?(computer_choice, choice)
    prompt "Score:"
    prompt "You: #{user_wins}"
    prompt "Computer: #{computer_wins}"

    if user_wins == 5
      prompt 'Congradulations! You won the tournament!'
      break
    elsif computer_wins == 5
      prompt 'The computer won the tournament. Better luck next time!'
      break
    end
  end

  play_again = ''
  loop do
    prompt 'Want to play another tournament?(y/n)'
    play_again = gets.chomp
    if %w(y n yes no).include?(play_again)
      break
    else
      puts "Please enter either 'y' or 'n'"
    end
  end
  break if %w(n no).include?(play_again)
end

prompt 'Thank you for playing. Good Bye!'
