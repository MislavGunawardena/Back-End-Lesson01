arr = %w(a b c d e)

arr.each do |letter|
  print letter
  print 1
  print 2
  if letter == 'c'
    puts '-break-'
    break
  end
  print 3
  puts 4
end

arr.each do |letter|
  print letter
  print 1
  print 2
  if letter == 'c'
    puts '-next-'
    next
  end
  print 3
  puts 4
end
