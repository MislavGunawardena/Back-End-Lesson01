MINUTES_PER_HOUR = 60

def after_midnight(time)
  hour, minutes = time.split(':').map(&:to_i)
  (hour % 24) * MINUTES_PER_HOUR + minutes
end

def before_midnight(time)
  hour, minutes = time.split(':').map(&:to_i)
  ((24 - hour) % 24) * MINUTES_PER_HOUR - minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0