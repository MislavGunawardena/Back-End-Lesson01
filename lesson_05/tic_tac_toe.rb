positions = [[:o,:x,' '],[' ',:o,' '],[:x,' ',:x]]

def display_board(positions)
  puts ' - - - '
  
  positions.each do |row|
    row.each do |cell|
      print "|#{cell}"
    end
    puts "|\n - - -"
  end
end

display_board(positions)