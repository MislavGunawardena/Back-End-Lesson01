def short_long_short(str1, str2)
  short_string, long_string = [str1, str2].sort_by { |str| str.size }
  "#{short_string}#{long_string}#{short_string}"
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"