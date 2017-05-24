def staggered_case(str)
  staggered_string = ''
  str.chars.each_with_index do |chr, index|
    if index.even?
      staggered_string << chr.upcase
    else
      staggered_string << chr.downcase
    end
  end
  staggered_string
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'