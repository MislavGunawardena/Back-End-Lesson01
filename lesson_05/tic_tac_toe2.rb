require 'pry'
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
  [1,2,3].select do |number|
    board[number - 1].any? { |cell| cell == ' ' }
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

def player_chooses_column(cell)
  column = ''
  loop do
    puts 'Please enter a column number : '
    column = gets.chomp.to_i
    if [1, 2, 3].include?(column)
      break
    else
      puts "That's not a valid column number. Please enter 1, 2, or 3:"
    end
  end
  cell[1] = column
end

def player_input(board)
  loop do
    marked_cell = ['', '']
    player_chooses_row(marked_cell, board)
    player_chooses_column(marked_cell)

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

def computer_turn(board)
  open_board =
    board.map do |row|
      row.select { |cell| cell == ' ' }
    end
  open_board.reject! do |row|
    row == []
  end

  open_board.sample.sample.replace('o')
end

def array_of_rows(board)
  board
end

def array_of_columns(board)
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

def array_of_diagonals(board)
  diagonals = []
  
  diagonal_1 = []
  diagonal_2 = []
  3.times do |counter|
    diagonal_1 << board[counter][counter] 
    diagonal_2 << board[2-counter][counter]
  end
  diagonals.push(diagonal_1, diagonal_2)
  
  diagonals
end

def winning_sequences(board)
  winning_combinations = []
  
  winning_combinations += array_of_rows(board)
  winning_combinations += array_of_columns(board)
  winning_combinations += array_of_diagonals(board)
  
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
  board.flatten.any? { |cell| cell != ' '}
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

=begin
def valid_pattern?(mark, board)
  board.each do |row|
    return true if row.all? {|cell| cell == mark}
  end

  3.times do |c|
    column = []
    3.times do |r|
      column << board[r][c]
    end
    return true if column.all?{|cell| cell == mark}
  end

  first_diagonal =
    [0,1,2].map {|number| board[number][number]}
  return true if first_diagonal.all? {|cell| cell == mark}

  second_diagonal =
    [0,1,2].map {|number| board[2-number][number]}
  return true if second_diagonal.all?{|cell| cell == mark}

  return false
end


def winner(board)
  if valid_pattern?('x', board)
    :player
  elsif valid_pattern?('o', board)
    :computer
  elsif board_full?(board)
    :draw
  else
    nil
  end
end


def board_full?(board)
  open_board =
    board.map do |row|
      row.select {|cell| cell == ' '}
    end
  open_board.reject! do |row|
    row == []
  end
  
  (open_board == []) ? true : false
end
=end

def display_result(board)
  if winner(board) == 'player'
    puts 'You won!'
  elsif winner(board) == 'computer'
    puts 'The computer won!'
  elsif winner(board) == 'draw'
    puts "It's a draw!"
  else
    nil
  end
end

puts 'Welcome to the tic-tac-toe game!'

loop do
  board = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
  display_board(board)

  loop do
    player_input(board)
    display_board(board)
    break if game_over?(board)

    puts "Please press enter for the computer to play it's turn."
    gets
    computer_turn(board)
    display_board(board)
    break if game_over?(board)
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
