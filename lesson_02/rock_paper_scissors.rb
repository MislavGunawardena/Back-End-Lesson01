VALID_CHOICES = %w(rock paper scissors spock lizard)
WINNING_COMBINATIONS = [%w(rock scissors), %w(rock lizard),
                        %w(paper rock), %w(paper spock),
                        %w(scissors paper), %w(scissors lizard),
                        %w(spock rock), %w(spock scissors),
                        %w(lizard paper), %w(lizard spock)]

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  chosen_combination = [first, second]

  WINNING_COMBINATIONS.include?(chosen_combination)
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

def display_scorboard(user_score, computer_score)
  prompt '----------'
  prompt "Score:"
  prompt "You: #{user_score}"
  prompt "Computer: #{computer_score}"
  prompt '----------'
end

def normalize_choice(choice)
  %w(r p sc sp l).each_with_index do |abbrivated, index|
    choice = VALID_CHOICES[index] if choice == abbrivated
  end
  choice
end

loop do
  user_score = 0
  computer_score = 0

  loop do
    user_choice = ''
    loop do
      prompt "Choose one: #{VALID_CHOICES.join(', ')} : "
      user_choice = gets.chomp
      user_choice = normalize_choice(user_choice)
      if VALID_CHOICES.include?(user_choice)
        break
      else
        prompt 'That is not a valid choice!'
        prompt "Enter 'sc' for scissors or 'sp' for spock" if user_choice == 's'
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt "You chose: #{user_choice}; computer chose: #{computer_choice}"
    display_result(user_choice, computer_choice)

    user_score += 1 if win?(user_choice, computer_choice)
    computer_score += 1 if win?(computer_choice, user_choice)
    display_scorboard(user_score, computer_score)

    if user_score == 5
      prompt 'Congratulations! You won the tournament!'
      break
    elsif computer_score == 5
      prompt 'The computer won the tournament. Better luck next time!'
      break
    end
  end

  play_again = ''
  loop do
    prompt 'Want to play another tournament?(y/n)'
    play_again = gets.chomp.downcase
    if %w(y n yes no).include?(play_again)
      break
    else
      prompt "Please enter either 'y' or 'n'"
    end
  end
  break if %w(n no).include?(play_again)
end

prompt 'Thank you for playing. Good Bye!'
