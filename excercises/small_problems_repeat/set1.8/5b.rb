# Modifies 5 to ignore non alphanumeric characters and case

# The all_alphanumeric? method might be useful to solve other problems too! 
# I should, maybe, look into other methods that might be generally useful
# in solving these kinds of problems.

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
  # string is modified to remove non-alphanumeric characters and to convert
  # all upper case letters to lower case letters.
  modified_string = str.gsub(/[^a-zA-Z0-9]/, '').downcase
  (modified_string == modified_string.reverse) && (modified_string.size > 1)
end

def all_alphanumeric?(strings_ary)
  strings_ary.all? { |str| !str.match(/[^a-zA-Z0-9]/) }
end

def palindromes (str)
  palindromic_substrings = []
  substrings(str).each do |substring|
    first_letter = substring[0]
    last_letter = substring[-1]
    if palindrome?(substring) && all_alphanumeric?([first_letter, last_letter])
      palindromic_substrings << substring
    end
  end
  
  palindromic_substrings
end

p all_alphanumeric?(['ahdhshaDsdasadasd', 'adhasadad8fsf', 'asdasasdfasdf'])
p all_alphanumeric?(['ahdhshaDsdasadasd', 'adhasadad8fsf', 'asdasasdfasdf'])

p palindromes('A%bBa5b')
p palindromes('A%bBa&b')

p palindromes('abcd') == []
p palindromes('ma#$d&a*m') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('kn1itting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]