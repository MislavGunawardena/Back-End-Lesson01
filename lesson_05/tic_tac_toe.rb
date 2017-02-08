require 'pry'
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'Y'.freeze
INITIAL_TURN = :choose # :player, :computer, or :choose
WINNING_SEQUENCES = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                     [1, 4, 7], [2, 5, 8], [3, 6, 9],
                     [1, 5, 9], [7, 5, 3]].freeze
TOURNAMENT_WINNING_SCORE = 5

def prompt(msg)
  puts "=> #{msg}"
end

def display_game(brd, scores)
  system 'clear'
  puts <<-EOF
       |     |
    #{brd[1]}  |  #{brd[2]}  | #{brd[3]}
       |     |
  -----+-----+-----               ** Score **
       |     |                 You : #{scores[:player]}
    #{brd[4]}  |  #{brd[5]}  | #{brd[6]}           Computer: #{scores[:computer]}
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

def winner?(competitor, brd)
  marker = PLAYER_MARKER if competitor == :player
  marker = COMPUTER_MARKER if competitor == :computer

  WINNING_SEQUENCES.any? do |arr|
    arr.all? { |num| (brd[num] == marker) }
  end
end

def winning_squares(competitor, brd)
  opposite_marker = COMPUTER_MARKER if competitor == :player
  opposite_marker = PLAYER_MARKER if competitor == :computer
  winning_sqrs =
    WINNING_SEQUENCES.select do |arr|
      arr.count { |num| brd[num] == ' ' } == 1
    end
  winning_sqrs.reject! do |arr|
    arr.any? { |num| brd[num] == opposite_marker }
  end

  winning_sqrs.flatten.select do |num|
    brd[num] == ' '
  end
end

def able_to_win?(competitor, brd)
  !winning_squares(competitor, brd).empty?
end

def computers_choice(brd)
  if able_to_win?(:computer, brd)
    winning_squares(:computer, brd).sample
  elsif able_to_win?(:player, brd)
    winning_squares(:player, brd).sample
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

def round_result(brd)
  if winner?(:player, brd)
    :player
  elsif winner?(:computer, brd)
    :computer
  elsif board_full?(brd)
    :tie
  end
end

def round_over?(brd)
  !!round_result(brd)
end

def update_scores(brd, scores)
  if winner?(:player, brd)
    scores[:player] += 1
  elsif winner?(:computer, brd)
    scores[:computer] += 1
  end
end

def mark_a_square(next_turn, brd)
  player_marks_square(brd) if next_turn == :player
  computer_marks_square(brd) if next_turn == :computer
end

def other_competitor(competitor)
  if competitor == :player
    :computer
  else
    :player
  end
end

def tournament_over?(scores)
  scores.values.include?(TOURNAMENT_WINNING_SCORE)
end

def display_tournament_result(scores)
  if scores[:player] == TOURNAMENT_WINNING_SCORE
    prompt "You won the tournament!"
  end
  if scores[:computer] == TOURNAMENT_WINNING_SCORE
    prompt "The computer won the tournament!"
  end
end

def press_enter_to_continue
  prompt 'Press Enter to continue.'
  gets
end

def display_round_result(brd)
  if round_result(brd) == :player
    prompt 'You won!'
  elsif round_result(brd) == :computer
    prompt 'The computer won!'
  elsif round_result(brd) == :tie
    prompt "It's a tie!"
  end
end

def empty_board
  brd = {}
  9.times { |num| brd[num + 1] = ' ' }
  brd
end

def another_tournament?
  another_tournament = ''
  loop do
    prompt 'Do you want to play another tournament? (y/n)'
    another_tournament = gets.chomp.downcase
    break if ['y', 'n', 'yes', 'no'].include?(another_tournament)

    prompt "That was not a valid response. Please enter 'y' or 'n'."
  end

  if ['y', 'yes'].include?(another_tournament)
    true
  elsif ['n', 'no'].include?(another_tournament)
    false
  end
end

def who_goes_first
  return :player if INITIAL_TURN == :player
  return :computer if INITIAL_TURN == :computer

  player_first = ''
  loop do
    prompt "Do you want to go first? (y/n)"
    player_first = gets.chomp.downcase
    break if ['y', 'n', 'yes', 'no'].include?(player_first)

    prompt "That is not a valid input, you must enter 'y', or 'n'."
  end

  if ['y', 'yes'].include?(player_first)
    :player
  else
    :computer
  end
end

loop do
  first_turn = who_goes_first
  scores = { player: 0, computer: 0 }

  loop do
    board = empty_board
    next_turn = first_turn
    display_game(board, scores)

    loop do
      mark_a_square(next_turn, board)
      update_scores(board, scores)
      display_game(board, scores)
      if round_over?(board)
        display_round_result(board)
        press_enter_to_continue
        break
      end

      next_turn = other_competitor(next_turn)
    end

    if tournament_over?(scores)
      display_tournament_result(scores)
      break
    end
    first_turn = other_competitor(first_turn)
  end

  break unless another_tournament?
end

prompt "Thank you for playing tic tac toe. Have a good day!"
