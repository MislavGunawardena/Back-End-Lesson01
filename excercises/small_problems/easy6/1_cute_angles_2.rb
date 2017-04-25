DEGREE = "\u00B0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(angle)
  seconds = (angle * SECONDS_PER_DEGREE).round
  minutes, seconds = seconds.divmod(SECONDS_PER_MINUTE)
  degrees, minutes = minutes.divmod(MINUTES_PER_DEGREE)
  
  format("%d#{DEGREE}%#02d'%#02d\"", degrees, minutes, seconds)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
puts dms(600.4)
puts dms(-100.3)