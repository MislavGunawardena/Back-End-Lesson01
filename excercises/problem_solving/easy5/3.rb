# method => after_midnight
# i/p -> time string in 'hh:mm' format
# o/p -> number of minutes after midnight
# 
# edge cases:
#   midnight, '00:00'
#   midnight, '24:00'
# 
# i/p -> time_str
# hours => extract value of hours from time_str
# mins => extract value of minutes from time_str
# 
# time_after_midnight = hours * 60 + mins
# return time_after_midnight

MINS_PER_HOUR = 60
HOURS_PER_DAY = 24
MINS_PER_DAY = MINS_PER_HOUR * HOURS_PER_DAY

def after_midnight(time_str)
  hours = time_str.slice(0..1).to_i
  hours = 0 if hours == 24
  mins = time_str.slice(-2..-1).to_i
  hours * MINS_PER_HOUR + mins
end

def before_midnight(time_str)
  mins_after_midnight = MINS_PER_DAY - after_midnight(time_str)
  mins_after_midnight % MINS_PER_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0