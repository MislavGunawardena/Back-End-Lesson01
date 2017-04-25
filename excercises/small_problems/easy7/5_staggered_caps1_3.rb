def staggered_case(string, need_to_capitalize = true) 
  string.chars.each_with_object('') do |chr, altered_string|
    altered_string << (need_to_capitalize ? chr.upcase : chr.downcase)
    need_to_capitalize = !need_to_capitalize
  end
end

p staggered_case('I Love Launch School!', true) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', false) == 'aLl_cApS'