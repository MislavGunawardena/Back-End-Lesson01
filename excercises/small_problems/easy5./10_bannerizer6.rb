MAX_WIDTH = 76

def print_in_box2(message)
  words = message.split
  width = 0

  if message.size > MAX_WIDTH
    puts "+-#{'-' * MAX_WIDTH}-+"
    puts "| #{' ' * MAX_WIDTH} |"
  else
    puts "+-#{'-' * message.size}-+"
    puts "| #{' ' * message.size} |"
  end

  words.each do |word|
    if width == 0
      print '| '
    end

    if word.size + width > MAX_WIDTH
      puts "#{' ' * (MAX_WIDTH - width + 1)}|"
      print '| '
      width = 0
    end

    print "#{word} "
    width += word.size + 1
  end

  if message.size > MAX_WIDTH
    puts "#{' ' * (MAX_WIDTH - width + 1)}|"
    puts "| #{' ' * MAX_WIDTH} |"
    puts "+-#{'-' * MAX_WIDTH}-+"
  else
    puts '|'
    puts "| #{' ' * message.size} |"
    puts "+-#{'-' * message.size}-+"
  end
end

print_in_box2('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque non justo eu nisl mollis mollis. Duis accumsan leo erat, molestie rutrum elit ornare eu. Sed non dui non turpis consequat euismod. In maximus, ante ac accumsan fermentum, urna turpis sagittis nulla, a bibendum quam dolor id massa. Aliquam id odio.')

