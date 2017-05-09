def staggered_case(str)
  index = -1
  characters = str.chars.map do |chr|
    index += 1
    index.even? ? chr.upcase : chr.downcase
  end
  
  characters.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
p staggered_case('') == ''