def staggered_case(string, count_non_alphabetics)
  altered_string = ''
  capitalize = true
  string.chars.each do |chr|
    if chr.match(/[a-z]/i)
      altered_string << (capitalize ? chr.upcase : chr.downcase)
      capitalize = !capitalize
    else
      altered_string << chr
      capitalize = !capitalize if count_non_alphabetics
    end
  end
  
  altered_string
end

#examples:
p staggered_case('I Love Launch School!', true) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('I Love Launch School!', false) == 'I lOvE lAuNcH sChOoL!'