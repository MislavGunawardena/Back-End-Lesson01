def staggered_case(str)
  staggered_string = ''
  capitalize = true
  str.chars.each do |chr|
    if chr.match(/[^a-z]/i)
      staggered_string << chr
    elsif capitalize
      staggered_string << chr.upcase
      capitalize = false
    else
      staggered_string << chr.downcase
      capitalize = true
    end
  end
  
  staggered_string
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'