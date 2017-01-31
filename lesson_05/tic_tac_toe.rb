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
    set_of_rows(board)[row_no - 1].any? { |col_no| col_no == ' ' }
  end
end

def available_columns(cell, board)
  [1,2,3].select do |col_no|
    board[cell[0] - 1][col_no - 1] == ' '
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

def player_chooses_row(cell, board)
  row = ''
  loop do
    puts "Please enter a row number : #{numbers_in_array(available_rows(board))}."
    row = gets.chomp.to_i
    if available_rows(board).include?(row)
      break
    else
      puts "That's not a valid row number. "
    end
  end
  cell[0] = row
end

def player_chooses_column(cell, board)
  column = ''
  loop do
    puts "Please enter a column number : #{numbers_in_array(available_columns(cell, board))}."
    column = gets.chomp.to_i
    if [1, 2, 3].include?(column)
      break
    else
      puts "That's not a valid column number. Please enter #{numbers_in_array(available_columns(cell, board))}."
    end
  end
  cell[1] = column
end

def player_marks_square(board)
  loop do
    marked_cell = ['', '']
    player_chooses_row(marked_cell, board)
    player_chooses_column(marked_cell, board)

    if board[marked_cell[0] - 1][marked_cell[1] - 1] == ' '
      board[marked_cell[0] - 1][marked_cell[1] - 1] = 'x'
      break
    else
      display_board(board)
      puts "The cell (#{marked_cell[0]}#{marked_cell[1]}) " +
           'has already been marked. Please choose another cell'
    end
  end
end

def print_dots_while_waiting
  2.times do
    5.times do
      print '.'
      sleep(0.3)
    end
    print "\r      \r"
  end
end

def computer_marks_square(board)
  puts "The computer is about to make it's move...."
  print_dots_while_waiting
  
  open_cells = 
    board.flatten.select do |cell|
      cell == ' '
    end
  open_cells.sample.replace('o')
end

def set_of_rows(board)
  board
end

def set_of_columns(board)
  all_columns = []
  3.times do |counter1|
    column = []
    3.times do |counter2|
      column << board[counter2][counter1]
    end
    all_columns << column
  end
  
  all_columns
end

def set_of_diagonals(board)
  all_diagonals = []
  
  diagonal_1 = []
  diagonal_2 = []
  3.times do |counter|
    diagonal_1 << board[counter][counter] 
    diagonal_2 << board[2-counter][counter]
  end
  all_diagonals.push(diagonal_1, diagonal_2)
  
  all_diagonals
end

def winning_sequences(board)
  winning_combinations = []
  
  winning_combinations += set_of_rows(board)
  winning_combinations += set_of_columns(board)
  winning_combinations += set_of_diagonals(board)
  
  winning_combinations
end

def player_won?(board)
  winning_sequences(board).any? do |arr|
    arr.all? { |cell| (cell == 'x') }
  end
end

def computer_won?(board)
  winning_sequences(board).any? do |arr|
    arr.all? { |cell| (cell == 'o') }
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

def mark_a_square(competitor, board)
  player_marks_square(board) if competitor == 'player'
  computer_marks_square(board) if competitor == 'computer'
end


puts 'Welcome to the tic-tac-toe game!'

loop do
  board = empty_board
  display_board(board)
  
  active_competitor = 'player'
  loop do
    mark_a_square(active_competitor, board)
    display_board(board)
    break if game_over?(board)
    switch_active_competitor(active_competitor)
  end

  display_result(board)

  another_game = ''
  
  loop do
    puts 'Do you want to play again? (y/n)'
    another_game = gets.chomp.downcase
    if ['y', 'n', 'yes', 'no'].include?(another_game)
      break
    else
      puts "That was not a valid response. Please enter 'y' or 'n'"
    end
  end

  break if ['n', 'no'].include?(another_game)
end

puts "Thank you for playing tic-tac-toe. Have a good day!"
