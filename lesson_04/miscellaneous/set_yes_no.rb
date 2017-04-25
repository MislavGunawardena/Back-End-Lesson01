arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr.map do |hsh|
  hsh.map do | _, num|
    num
  end
end

def set_yes_no(str, msg)
  puts msg
  str.replace(gets.chomp.downcase)
  return if ['y', 'n', 'yes', 'no'].include?(str)
  
  puts "That is not a valid response. Please enter 'y', or 'n'"
  set_yes_no(str, msg)
end

play_again = ''
set_yes_no(play_again, 'Do you want to play again? (y/n)')

puts "**#{play_again}**"