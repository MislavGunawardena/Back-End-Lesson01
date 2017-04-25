def time_string(number)
  if number < 10
    "0#{number.to_s}"
  else
    number.to_s
  end
end

def time_of_day(minutes_from_midnight)
  minutes = minutes_from_midnight % 60
  hour = (minutes_from_midnight / 60) % 24
  
  minutes = time_string(minutes)
  hour = time_string(hour)
  
  "#{hour}:#{minutes}"
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"