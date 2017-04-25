def round_up(degrees, minutes, seconds)
  seconds += 1 if seconds - seconds.to_i > 0.5

  if seconds.to_i == 60
    seconds = 0
    minutes += 1
  end
  if minutes.to_i == 60
    minutes = 0
    degrees += 1
  end

  [degrees, minutes, seconds].map(&:to_i)
end

def string_form(degrees, minutes, seconds)
  degrees = degrees.to_s
  minutes = minutes.to_s
  minutes.prepend '0' if minutes.size == 1
  seconds = seconds.to_s
  seconds = seconds.prepend '0' if seconds.size == 1
  
  [degrees, minutes, seconds]
end

def dms(angle)
  fractional_part_angle = angle - angle.to_i
  minutes = fractional_part_angle / (1.0/60)
  seconds_component_of_angle = fractional_part_angle - (1.0/60) * minutes.to_i
  seconds = seconds_component_of_angle / (1.0/(60*60))
  
  degrees, minutes, seconds = round_up(angle, minutes, seconds)
  degrees, minutes, seconds = string_form(degrees, minutes, seconds)
  
  "#{degrees}°#{minutes}'#{seconds}\""
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
