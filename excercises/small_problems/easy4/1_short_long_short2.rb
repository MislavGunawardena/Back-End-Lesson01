def short_long_short(string1, string2)
  if string1.size > string2.size
   string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

puts short_long_short('abc', 'defgh')
puts short_long_short('abcde', 'fgh')
puts short_long_short('', 'xyz')