def substrings_at_start(str)
  substrings = []
  size = str.size
  1.upto(size) do |index|
    substrings << str.slice(0, index)
  end
  
  substrings
end

def substrings(str)
  substrings = []
  size = str.size
  size.times do |index|
    substrings << substrings_at_start(str[index..-1])
  end
  
  substrings.flatten
end

def palindromes(str)
  substrings(str).select do |sub_str| 
    sub_str == sub_str.reverse && sub_str.size > 1
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]