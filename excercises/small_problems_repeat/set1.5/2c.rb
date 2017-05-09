require 'date' 
DAYS = %w(Sunday Monday Tuesday Wednsday Thursday Friday Saturday)

def time_of_day(minutes_from_midnight)
  d = Date.parse('sunday')
  t = d.to_time
  t = t + minutes_from_midnight * 60
  format("#{DAYS[t.wday]} %02d:%02d", t.hour, t.min)
end

p time_of_day(-4231)