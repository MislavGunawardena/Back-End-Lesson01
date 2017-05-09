#further exploration:

def staggered_case(str, count_non_alphabetics)
  must_upcase = false
  str.gsub(/./) do |chr|
    must_upcase = !must_upcase if chr.match(/[a-z]/i) || count_non_alphabetics
    must_upcase ? chr.upcase : chr.downcase
  end
end

p staggered_case('I Love Launch School!', false) == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS', true) == 'AlL CaPs'
p staggered_case('ignore 77 the 444 numbers', false) == 'IgNoRe 77 ThE 444 nUmBeRs'