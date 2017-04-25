def staggered_case(string)
  altered_string = ''
  capitalize = true
  string.chars.each do |chr|
    if chr.match(/[a-z]/i)
      altered_string << (capitalize ? chr.upcase : chr.downcase)
      capitalize = !capitalize
    else
      altered_string << chr
    end
  end
  
  altered_string
end

#examples:
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'