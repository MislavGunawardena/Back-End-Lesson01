require 'pry'

positions = [[' ',' ',' '],[' ',' ',' '],[' ',' ',' ']]

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
    
  binding.pry
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
  else
    nil
  end
end

def display_result(positions)
  if winner(positions) == :player
    puts 'You won!'
  elsif winner(positions) == :computer
    puts 'The computer won!'
  else
    puts "It's a draw!"
  end
end

5.times do
  display_board(positions)
  player_input(positions)
  break if winner(positions)
  computer_turn(positions)
  break if winner(positions)
end

display_result(positions)

