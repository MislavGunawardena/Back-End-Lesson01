def staggered_case(str)
  must_upcase = false
  str.gsub(/./) do |chr|
    must_upcase = !must_upcase
    must_upcase ? chr.upcase : chr.downcase
  end
end

p staggered_case('Abc')

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
# p staggered_case('') == ''