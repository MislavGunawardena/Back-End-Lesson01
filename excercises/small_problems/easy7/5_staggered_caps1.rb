# staggered_case <= string
# => a new string : Should return the i/p argument value after modifying it so 
# that every other character is upper case. Remaining characters should be lower
# case. Characters that are not letters count as characters, but should not be
# changed.

def staggered_case(string)
  altered_string = ''
  capitalize = true
  string.chars.each do |chr|
    altered_string << (capitalize ? chr.upcase : chr.downcase)
    capitalize = !capitalize
  end
  
  altered_string
end

#examples:
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'