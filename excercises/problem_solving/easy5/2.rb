# time_of_day(delta_minutes)
# i/p - time from midnight, delta_minutes, +ve or -ve
# o/p - time of day in a 'hh:mm' string format
# 
# minutes_hour = 60
# hours_per_day = 24
# minutes_per_day = minutes_per_hour * hours_per_day 24 * 60
# 
# mins_after_midnight = delta_minutes % minutes_per_day
# 
# hours = mins_after_midnight / 60
# minutes = mins_after_midnight % 60
# 
# return "hours:minutes"

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def time_of_day(delta_mins)
  mins_after_midnight = delta_mins % MINUTES_PER_DAY
  hours = mins_after_midnight / MINUTES_PER_HOUR
  mins = mins_after_midnight % MINUTES_PER_HOUR
  format("%.2d:%.2d", hours, mins)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"