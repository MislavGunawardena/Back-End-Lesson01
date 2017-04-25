require 'pry'
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'Y'.freeze
INITIAL_TURN = 'choose'.freeze
WINNING_SEQUENCES = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                     [1, 4, 7], [2, 5, 8], [3, 6, 9],
                     [1, 5, 9], [7, 5, 3]].freeze
ROUNDS_PER_TOURNAMENT = 5

def prompt(msg)
  puts "=> #{msg}"
end

def display_game(brd, score)
  system 'clear'
  puts <<-EOF
       |     |
    #{brd[1]}  |  #{brd[2]}  | #{brd[3]}
       |     |
  -----+-----+-----               ** Score **
       |     |                 You : #{score[:player]}
    #{brd[4]}  |  #{brd[5]}  | #{brd[6]}           Computer: #{score[:computer]}
       |     |
  -----+-----+-----
       |     |
    #{brd[7]}  |  #{brd[8]}  | #{brd[9]}
       |     |

  EOF
end

def board_full?(brd)
  brd.values.all? { |sqr| sqr != ' ' }
end

def player_won?(brd)
  WINNING_SEQUENCES.any? do |arr|
    arr.all? { |num| (brd[num] == PLAYER_MARKER) }
  end
end

def computer_won?(brd)
  WINNING_SEQUENCES.any? do |arr|
    arr.all? { |num| (brd[num] == COMPUTER_MARKER) }
  end
end

def squares_for_player_win(brd)
  winning_sqrs =
    WINNING_SEQUENCES.select do |arr|
      arr.count { |num| brd[num] == ' ' } == 1
    end
  winning_sqrs.reject! do |arr|
    arr.any? { |num| brd[num] == COMPUTER_MARKER }
  end
  winning_sqrs.flatten.select do |num|
    brd[num] == ' '
  end
end

def player_can_win?(brd)
  !squares_for_player_win(brd).empty?
end

def squares_for_computer_win(brd)
  winning_sqrs =
    WINNING_SEQUENCES.select do |arr|
      arr.count { |num| brd[num] == ' ' } == 1
    end
  winning_sqrs.reject! do |arr|
    arr.any? { |num| brd[num] == PLAYER_MARKER }
  end
  winning_sqrs.flatten.select do |num|
    brd[num] == ' '
  end
end

def computer_can_win?(brd)
  !squares_for_computer_win(brd).empty?
end

def computers_choice(brd)
  if computer_can_win?(brd)
    squares_for_computer_win(brd).sample
  elsif player_can_win?(brd)
    squares_for_player_win(brd).sample
  elsif available_squares(brd).include?(5)
    5
  else
    available_squares(brd).sample
  end
end

def print_dots_while_waiting
  2.times do
    5.times do
      print '.'
      sleep(0.1)
    end
    print "\r      \r"
  end
end

def available_squares(brd)
  brd.keys.select do |num|
    brd[num] == ' '
  end
end

def joinor(arr, seperator = ', ', conjunction = 'or')
  last_number = arr.pop
  if arr.size > 1
    "#{arr.join(seperator)}, #{conjunction} #{last_number}"
  elsif arr.size == 1
    "#{arr[0]} #{conjunction} #{last_number}"
  else
    last_number.to_s
  end
end

def computer_marks_square(brd)
  prompt "The computer is about to make it's move...."
  print_dots_while_waiting

  brd[computers_choice(brd)] = COMPUTER_MARKER
end

def player_marks_square(brd)
  prompt 'Please enter the number of the square you want to mark.'
  prompt "Make a choice: #{joinor(available_squares(brd))}"
  sqr = gets.chomp.to_i
  if available_squares(brd).include?(sqr)
    brd[sqr] = PLAYER_MARKER
  else
    prompt "That is not a valid number."
    player_marks_square(brd)
  end
end

def result(brd)
  if player_won?(brd)
    'player'
  elsif computer_won?(brd)
    'computer'
  elsif board_full?(brd)
    'tie'
  end
end

def game_over?(brd)
  !!result(brd)
end

def update_score(brd, score)
  if player_won?(brd)
    score[:player] += 1
  elsif computer_won?(brd)
    score[:computer] += 1
  end
end

def mark_a_square(next_turn, brd)
  player_marks_square(brd) if next_turn == 'player'
  computer_marks_square(brd) if next_turn == 'computer'
end

def switch_turn(turn)
  if turn == 'player'
    turn.replace('computer')
  else
    turn.replace('player')
  end
end

def tournament_over?(score)
  [score[:player], score[:computer]].include?(ROUNDS_PER_TOURNAMENT)
end

def display_tournament_result(score)
  prompt "You won the tournament!" if score[:player] == ROUNDS_PER_TOURNAMENT
  if score[:computer] == ROUNDS_PER_TOURNAMENT
    prompt "The computer won the tournament!"
  end
end

def press_enter_to_continue
  prompt 'Press Enter to continue.'
  gets
end

def display_round_result(brd)
  if result(brd) == 'player'
    prompt 'You won!'
  elsif result(brd) == 'computer'
    prompt 'The computer won!'
  elsif result(brd) == 'tie'
    prompt "It's a tie!"
  end
end

def play_a_round(next_turn, brd, score)
  mark_a_square(next_turn, brd)
  update_score(brd, score)
  display_game(brd, score)
  if game_over?(brd)
    display_round_result(brd)
    press_enter_to_continue
    return
  end

  switch_turn(next_turn)
  play_a_round(next_turn, brd, score)
end

def empty_board
  brd = {}
  9.times { |num| brd[num + 1] = ' ' }
  brd
end

def continue_or_stop(play_again)
  prompt 'Do you want to play another tournament? (y/n)'
  play_again.replace(gets.chomp.downcase)
  return if ['y', 'n', 'yes', 'no'].include?(play_again)

  prompt "That was not a valid response. Please enter 'y' or 'n'."
  continue_or_stop(play_again)
end

def play_tournament(first_turn, brd = empty_board,
                    score = { player: 0, computer: 0 })
  next_turn = first_turn.dup
  display_game(brd, score)
  play_a_round(next_turn, brd, score)

  if tournament_over?(score)
    display_tournament_result(score)
    return
  end

  brd = empty_board
  display_game(brd, score)
  switch_turn(first_turn)
  play_tournament(first_turn, brd, score)
end

def who_goes_first(first_turn)
  prompt "Do you want to go first? (y/n)"
  player_first = gets.chomp.downcase
  if ['yes', 'y'].include?(player_first)
    first_turn.replace('player')
  elsif ['no', 'n'].include?(player_first)
    first_turn.replace('computer')
  else
    prompt "That is not a valid input, you must enter 'y', or 'n'."
    who_goes_first(first_turn)
  end
end

prompt 'Welcome to the tic-tac-toe game!'

loop do
  first_turn = INITIAL_TURN.dup
  who_goes_first(first_turn) unless ['player', 'computer'].include?(first_turn)

  play_tournament(first_turn)

  another_tournament = ''
  continue_or_stop(another_tournament)
  break if ['n', 'no'].include?(another_tournament)
end

prompt "Thank you for playing tic tac toe. Have a good day!"
