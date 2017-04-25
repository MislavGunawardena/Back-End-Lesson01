def string_reverse(string)
  reversed_string = ''
  string.chars.each { |chr| reversed_string.prepend(chr) }
  reversed_string
end

p string_reverse('abcdef')