


begin
  puts 'Want to continue?(y/n)'
  answer = gets.chomp.chr.downcase
end while answer != 'n'
puts answer