def cleanup(str)
  str.gsub(/[^a-zA-Z]+/, ' ')
end

p cleanup('abc!df')
p cleanup("---what's my +*& line?") == ' what s my line '