#short way:
advice = 'Few things in life are as important as house training your pet dinosaur.'
advice.gsub! 'important', 'urgent'
puts advice

#Alternative longer way:
advice = 'Few things in life are as important as house training your pet dinosaur.'
n = advice.index 'important'
advice.slice! 'important'
advice.insert n, 'urgent'
puts advice