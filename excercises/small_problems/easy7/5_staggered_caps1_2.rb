def staggered_case(string, starting_case = true) 
  altered_string = ''
  capitalize = starting_case
  string.chars.each do |chr|
    altered_string << (capitalize ? chr.upcase : chr.downcase)
    capitalize = !capitalize
  end
  
  altered_string
end

p staggered_case('I Love Launch School!', true) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', false) == 'aLl_cApS'