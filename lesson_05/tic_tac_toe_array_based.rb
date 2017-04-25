def display_board(board)
  puts '  1 2 3 '
  puts '  - - - '

  board.each_with_index do |row, index|
    print "#{index + 1}"
    row.each do |cell|
      print "|#{cell}"
    end
    puts "|\n  - - -"
  end
end

def available_rows(board)
  [1,2,3].select do |row_no|
    rows(board)[row_no - 1].any? { |col_no| col_no == ' ' }
  end
end

def available_columns(chosen_row, board)
  [1,2,3].select do |col_no|
    board[chosen_row][col_no - 1] == ' '
  end
end

def numbers_in_array(arr)
  last_number = arr.pop
  if arr.size > 1
    "#{arr.join(', ')}, or #{last_number}"
  elsif arr.size == 1
    "#{arr[0]} or #{last_number}"
  else
    "#{last_number}"
  end
end

def player_sets_row(sqr, board)
  puts "Please enter a row number : #{numbers_in_array(available_rows(board))}."
  row = gets.chomp.to_i
  if available_rows(board).include?(row)
    sqr[0] = row - 1
  else
    puts "That's not a valid row number. "
    player_sets_row(sqr, board)
  end
end

def player_sets_column(sqr, board)
  puts "Please enter a column number : #{numbers_in_array(available_columns(sqr[0], board))}."
  column = gets.chomp.to_i
  if [1, 2, 3].include?(column)
    sqr[1] = column - 1
  else
    puts "That's not a valid column number. Please enter #{numbers_in_array(available_columns(sqr, board))}."
    player_sets_row(sqr, board)
  end
end

def player_marks_square(board)
  square = [nil, nil]
  player_sets_row(square, board)
  player_sets_column(square, board)
  row_no, col_no = square

  if board[row_no][col_no] == ' '
    board[row_no][col_no] = 'X'
  else
    display_board(board)
    puts "The cell (#{row_no}#{col_no}) " +
         'has already been marked. Please choose another cell'
    player_marks_square(board)
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

def empty_squares(board)
  blank_spaces = []
  3.times do |row_no|
    3.times do |col_no|
      blank_spaces << [row_no, col_no] if board[row_no][col_no] == ' '
    end 
  end
  blank_spaces
end

def computer_marks_square(board)
  puts "The computer is about to make it's move...."
  print_dots_while_waiting
  
  if squares_for_computer_win(board).include?(' ')
    squares_for_computer_win(board).sample.replace('O')
  elsif squares_for_player_win(board).include?(' ')
    squares_for_player_win(board).sample.replace('O')
  else
    chosen_square = empty_squares(board).sample
    board[chosen_square[0]][chosen_square[1]].replace('O')
  end
end

def rows(board)
  board
end

def columns(board)
  board.transpose
end

def diagonals(board)
  diagonal_1 = []
  diagonal_2 = []
  3.times { |num| diagonal_1 << board[num][num] }
  3.times { |num| diagonal_2 << board[2 - num][num] }
  [diagonal_1, diagonal_2]
end

def winning_sequences(board)
  rows(board) + columns(board) + diagonals(board)
end

def squares_for_computer_win(board)
  sequences_for_computer_win =
    winning_sequences(board).select do |sequence|
      (sequence.count('O') == 2) && (sequence.count(' ') == 1) 
    end
    
  sequences_for_computer_win.flatten.reject { |cell| cell != ' '}
end

def squares_for_player_win(board)
  sequences_for_player_win =
    winning_sequences(board).select do |sequence|
      (sequence.count('X')) == 2 && (sequence.count(' ') == 1)
    end
  sequences_for_player_win.flatten.reject { |cell| cell != ' '}
end

def player_won?(board)
  winning_sequences(board).any? do |arr|
    arr.all? { |sqr| (sqr == 'X') }
  end
end

def computer_won?(board)
  winning_sequences(board).any? do |arr|
    arr.all? { |sqr| (sqr == 'O') }
  end
end

def board_full?(board)
  board.flatten.all? { |cell| cell != ' '}
end

def result(board)
  if player_won?(board)
    'player'
  elsif computer_won?(board)
    'computer'
  elsif board_full?(board)
    'tie'
  else
    nil
  end
end

def game_over?(board)
  !!result(board)
end

def display_result(board)
  if result(board) == 'player'
    puts 'You won!'
  elsif result(board) == 'computer'
    puts 'The computer won!'
  elsif result(board) == 'tie'
    puts "It's a tie!"
  end
end

def empty_board
  board = []
  3.times do
    row = []
    3.times { row << ' ' }
    board << row
  end
  board
end

def switch_active_competitor(active_competitor)
  if active_competitor == 'player'
    active_competitor.replace('computer')
  else
    active_competitor.replace('player')
  end
end

def set_active_competitor(competitor)
  puts "Do you want to go first? (y/n)"
  player_first = gets.chomp.downcase
  competitor.replace('player') if ['yes', 'y'].include?(player_first)
  competitor.replace('computer') if ['no', 'n'].include?(player_first)
  
  set_active_competitor(competitor) unless ['y', 'n', 'yes', 'no']
end

def mark_a_square(competitor, board)
  player_marks_square(board) if competitor == 'player'
  computer_marks_square(board) if competitor == 'computer'
end

def decide_on_playing_again(play_again)
  puts 'Do you want to play again? (y/n)'
  play_again.replace(gets.chomp.downcase)
  return if ['y', 'n', 'yes', 'no'].include?(play_again)
  
  puts "That was not a valid response. Please enter 'y' or 'n'"
  decide_on_playing_again(play_again)
end

puts 'Welcome to the tic-tac-toe game!'

loop do
  board = empty_board
  display_board(board)
  
  active_competitor = ''
  set_active_competitor(active_competitor)
  
  loop do
    mark_a_square(active_competitor, board)
    display_board(board)
    break if game_over?(board)
    switch_active_competitor(active_competitor)
  end

  display_result(board)

  play_again = ''
  decide_on_playing_again(play_again)

  break if ['n', 'no'].include?(play_again)
end

puts "Thank you for playing tic-tac-toe. Have a good day!"
