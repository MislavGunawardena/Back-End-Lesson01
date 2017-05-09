# Once again, the methodical, line-by-line, pry-assisted approach has proven
# it's worth.

def substrings_at_start(str)
  substrings = []
  str.size.times do |index|
    substrings << str[0..index]
  end
  
  substrings
end

def substrings(str)
  substrings = []
  str.size.times do |index|
    substrings << substrings_at_start(str[index..-1])
  end
  
  substrings.flatten
end

def palindrome?(str)
  (str == str.reverse) && (str.size != 1)
end

def palindromes (str)
  palindromic_substrings = []
  substrings(str).each do |substring|
    palindromic_substrings << substring if palindrome?(substring)
  end
  
  palindromic_substrings
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
