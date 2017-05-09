def staggered_case(str)
  must_upcase = false
  str.gsub(/./) do |chr|
    must_upcase = !must_upcase if chr.match(/[a-z]/i)
    must_upcase ? chr.upcase : chr.downcase
  end
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'