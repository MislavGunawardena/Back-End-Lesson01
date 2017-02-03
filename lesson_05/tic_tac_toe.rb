PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'Y'

def display_game(brd, score)
  system 'clear'
  puts <<-EOF
       |     |   
    #{brd[1]}  |  #{brd[2]}  | #{brd[3]}    
       |     |            
  -----+-----+-----               ** Score **
       |     |                  You : #{score[:player]}
    #{brd[4]}  |  #{brd[5]}  | #{brd[6]}            Computer: #{score[:computer]}
       |     |
  -----+-----+-----
       |     |     
    #{brd[7]}  |  #{brd[8]}  | #{brd[9]}  
       |     |
  EOF
end

def numbers_in_array(arr)
  last_number = arr.pop
  if arr.size > 1
    "Choose from : #{arr.join(', ')}, or #{last_number}."
  elsif arr.size == 1
    "Choose from : #{arr[0]} or #{last_number}."
  else
    "#{last_number} is the only available choice."
  end
end

def available_squares(brd)
  brd.keys.select do |sqr_no|
    brd[sqr_no] == ' '
  end 
end


def player_marks_square(brd)
  puts "Please enter the number of the square you want to mark. " + 
       "#{numbers_in_array(available_squares(brd))}"
  sqr = gets.chomp.to_i
  if available_squares(brd).include?(sqr)
    brd[sqr] = PLAYER_MARKER
  else
    puts "That is not a valid number."
    player_marks_square(brd)
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

def computer_can_win?(brd)
  !(squares_for_computer_win(brd).empty?)
end

def player_can_win?(brd)
  !(squares_for_player_win(brd).empty?)
end


def computers_choice(brd)
  if computer_can_win?(brd)
    squares_for_computer_win(brd).sample
  elsif player_can_win?(brd)
    squares_for_player_win(brd).sample
  else
    available_squares(brd).sample
  end
end

def computer_marks_square(brd)
  puts "The computer is about to make it's move...."
  print_dots_while_waiting
  
  brd[computers_choice(brd)] = COMPUTER_MARKER
end


def winning_sequences(brd)
  [ [1, 2, 3], [4, 5, 6], [7, 8, 9],
    [1, 4, 7], [2, 5, 8], [3, 6, 9],
    [1, 5, 9], [7, 5, 3]]
end


def squares_for_computer_win(brd)
  winning_sqrs  = winning_sequences(brd).select do |arr|
                    arr.count{ |num| brd[num] == ' ' } == 1
                  end
  winning_sqrs.reject! do |arr|
    arr.any?{ |num| brd[num] == PLAYER_MARKER }
  end
  winning_sqrs.flatten.select do |num|
    brd[num] == ' '
  end
end

def squares_for_player_win(brd)
  winning_sqrs  = winning_sequences(brd).select do |arr|
                    arr.count{ |num| brd[num] == ' ' } == 1
                  end
  winning_sqrs.reject! do |arr|
    arr.any?{ |num| brd[num] == COMPUTER_MARKER }
  end
  winning_sqrs.flatten.select do |num|
    brd[num] == ' '
  end
end

def player_won?(brd)
  winning_sequences(brd).any? do |arr|
    arr.all? { |num| (brd[num] == PLAYER_MARKER) }
  end
end

def computer_won?(brd)
  winning_sequences(brd).any? do |arr|
    arr.all? { |num| (brd[num] == COMPUTER_MARKER) }
  end
end

def board_full?(brd)
  brd.values.all? { |sqr| sqr != ' '}
end

def result(brd)
  if player_won?(brd)
    'player'
  elsif computer_won?(brd)
    'computer'
  elsif board_full?(brd)
    'tie'
  else
    nil
  end
end

def game_over?(brd)
  !!result(brd)
end

def display_result(brd)
  if result(brd) == 'player'
    puts 'You won!'
  elsif result(brd) == 'computer'
    puts 'The computer won!'
  elsif result(brd) == 'tie'
    puts "It's a tie!"
  end
end

def empty_board
  brd = {}
  9.times { |num| brd[num + 1] = ' ' }
  brd
end

def switch_turn(turn_of)
  if turn_of == 'player'
    turn_of.replace('computer')
  else
    turn_of.replace('player')
  end
end

def set_turn(turn_of)
  puts "Do you want to go first? (y/n)"
  player_first = gets.chomp.downcase
  turn_of.replace('computer') if ['no', 'n'].include?(player_first)
  
  set_turn(turn_of) unless ['y', 'n', 'yes', 'no'].include?(player_first)
end

def mark_a_square(turn_of, brd)
  player_marks_square(brd) if turn_of == 'player'
  computer_marks_square(brd) if turn_of == 'computer'
end

def decide_on_playing_again(play_again)
  puts 'Do you want to play another tournament? (y/n)'
  play_again.replace(gets.chomp.downcase)
  return if ['y', 'n', 'yes', 'no'].include?(play_again)
  
  puts "That was not a valid response. Please enter 'y' or 'n'"
  decide_on_playing_again(play_again)
end

def play_game(turn_of, brd, score)
  mark_a_square(turn_of, brd)
  update_score(brd, score)
  display_game(brd, score)
  #display_score(score)
  return if game_over?(brd)
  
  switch_turn(turn_of)
  play_game(turn_of, brd, score)
end

def update_score(brd, score)
  if player_won?(brd)
    score[:player] += 1
  elsif computer_won?(brd)
    score[:computer] += 1
  end
end

def press_enter_to_continue
  puts 'Press Enter to continue.'
  gets
end

def display_score(score)
  puts <<-EOF
  
         ** Score **
       You : #{score[:player]}
  Computer : #{score[:computer]}
  
  EOF
end

puts 'Welcome to the tic-tac-toe game!'

loop do
  board = empty_board
  score = {player: 0, computer: 0}
  display_game(board, score)

  turn_of = 'player'
  set_turn(turn_of)
  
  loop do
    play_game(turn_of, board, score)
    
    display_result(board)
    #display_score(score)

    press_enter_to_continue
    
    if score[:player] == 5
      puts "You won the tournament!"
      break
    elsif score[:computer] == 5
      puts "The computer won the tournament!"
      break
    end
    
    board = empty_board
    display_game(board, score)
  end

  play_again = ''
  decide_on_playing_again(play_again)

  break if ['n', 'no'].include?(play_again)
end

puts "Thank you for playing tic-tac-toe. Have a good day!"
