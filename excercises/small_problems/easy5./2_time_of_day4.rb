require 'time'
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

def time_of_day(delta_minutes)
  date = Date.parse('Sunday') # date is set to a sunday.
  time = date.to_time # date is converted to a Time object.
  time += delta_minutes * 60 # time is incremented by a certain number of seconds.
  time.strftime("%A %H:%M")
end

puts time_of_day(0)
puts time_of_day(-3)
puts time_of_day(-50 * 60 - 12)
puts time_of_day(-4231) == "Thursday 01:29"