advice = 'Few things in life are as important as house training your pet dinosaur.'
puts advice.slice!(/Few.*important as /)
puts advice

advice = 'Few things in life are as important as house training your pet dinosaur.'
puts advice.slice!(0, advice.index('house'))
puts advice

#If the String#slice method is used instead, then the string pointed to by the advice variable will be unchanged.