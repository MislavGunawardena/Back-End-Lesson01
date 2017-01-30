def method1
  puts '!'
  yield
  puts "+"
end

method1 {
  puts "hi"
  break
  puts 'hi'
}