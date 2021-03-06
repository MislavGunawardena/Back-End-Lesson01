def after_midnight(time_string)
  hour = time_string[0..1].to_i
  minutes = time_string[3..4].to_i
  (hour % 24) * 60 + minutes
end

def before_midnight(time_string)
  (1440 - after_midnight(time_string)) % 1440
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0