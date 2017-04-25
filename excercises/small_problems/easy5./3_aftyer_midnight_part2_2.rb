MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def after_midnight(time_string)
  hour, minutes = time_string.split(':').map(&:to_i)
  (hour % HOURS_PER_DAY) * 60 + minutes
end

def before_midnight(time_string)
  (MINUTES_PER_DAY- after_midnight(time_string)) % MINUTES_PER_DAY
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0