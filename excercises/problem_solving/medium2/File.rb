
sample2 = File.new('sample2.txt', 'a+')
sample2.puts "Added a line!"
sample2.close # files must be closed.

sample3 = File.open('sample3.txt', 'a+') do |file| # There is no need to close
  text = file.read.chomp                           # file here.
  p text
  if text[-1] == '1'
    file.write 0
  else
    file.write 1
  end
  nil
end

p sample3

text2 = File.read('sample3.txt').chomp
puts "**#{text2}**"

lines = File.readlines('sample3.txt')
p lines

File.delete('sample3.txt')