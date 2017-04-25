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

p all_substrings('abcde')