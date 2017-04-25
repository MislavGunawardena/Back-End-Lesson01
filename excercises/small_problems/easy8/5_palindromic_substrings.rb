def substrings_at_start(string)
  leading_substrings = []
  0.upto(string.size - 1) do |index|
    leading_substrings << string.slice(0..index)
  end
  
  leading_substrings
end

def all_substrings(string)
  substrings = []
  0.upto(string.size - 1) do |index|
    substrings << substrings_at_start(string.slice(index..-1))
  end
  
  substrings.flatten
end

def palindromic?(string)
  return false if string.size == 1
  string == string.reverse
end

def palindromes(string)
  substrings = all_substrings(string)
  palindromic_substrings = []
  substrings.each do |substring|
    palindromic_substrings << substring if palindromic?(substring)
  end
  
  palindromic_substrings
end


p palindromes('abcded')


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