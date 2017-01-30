require 'pry'
def display_board(positions)
  puts '  1 2 3 '
  puts '  - - - '
  
  positions.each_with_index do |row, index|
    print "#{index + 1}"
    row.each do |cell|
      print "|#{cell}"
    end
    puts "|\n  - - -"
  end
end

def player_input(positions)
  row = nil
  column = nil
  loop do #Marking cell by player
    loop do #Accepting row from player
      puts 'Please enter a row number : '
      row = gets.chomp.to_i
      if [1,2,3].include?(row)
        break
      else
        puts "That's not a valid row number. Please enter 1, 2, or 3:"
      end
    end
    
    loop do #Accepting column from player
      puts 'Please enter a column number : '
      column = gets.chomp.to_i
      if [1,2,3].include?(column)
        break
      else
        puts "That's not a valid column number. Please enter 1, 2, or 3:"
      end
    end
    
    if positions[row-1][column-1] == ' '
      positions[row-1][column-1] = :x
      break
    else
      display_board(positions)
      puts "The cell (#{row}#{column}) have already been marked. Please choose another cell"
    end
  end
end

def computer_turn(positions)
  open_positions =
    positions.map do |row|
      row.select {|cell| cell == ' '}
    end
  open_positions.reject! do |row|
    row == []
  end
    
  #binding.pry
  open_positions.sample.sample.replace('o')
end

def valid_pattern?(mark, positions)
  positions.each do |row|
    return true if row.all? {|cell| cell == mark}
  end

  3.times do |c|
    column = []
    3.times do |r|
      column << positions[r][c]
    end
    return true if column.all?{|cell| cell == mark}
  end

  first_diagonal =
    [0,1,2].map {|number| positions[number][number]}
  return true if first_diagonal.all? {|cell| cell == mark}
    
  second_diagonal = 
    [0,1,2].map {|number| positions[2-number][number]}
  return true if second_diagonal.all?{|cell| cell == mark}

  return false
end

def winner(positions) #returns the winner
  if valid_pattern?(:x, positions)
    :player
  elsif valid_pattern?('o', positions)
    :computer
  elsif board_full?(positions)
    :draw
  else
    nil
  end
end

def board_full?(positions)
  open_positions =
    positions.map do |row|
      row.select {|cell| cell == ' '}
    end
  open_positions.reject! do |row|
    row == []
  end
  
  (open_positions == []) ? true : false
end

def display_result(positions)
  if winner(positions) == :player
    puts 'You won!'
  elsif winner(positions) == :computer
    puts 'The computer won!'
  elsif winner(positions) == :draw
    puts "It's a draw!"
  else
    nil
  end
end

puts 'Welcome to the tic-tac-toe game!'

loop do
  positions = [[' ',' ',' '],[' ',' ',' '],[' ',' ',' ']]
  display_board(positions)
  
  loop do
    player_input(positions)
    display_board(positions)
    break if winner(positions)
    
    puts "Please press enter for the computer to play it's turn."
    gets
    computer_turn(positions)
    display_board(positions)
    break if winner(positions)
  end
  
  display_result(positions)
  
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

