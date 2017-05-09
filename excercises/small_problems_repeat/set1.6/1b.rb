MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(num)
  sign = ''
  sign = '-' if num.negative?
  num = num.abs
  total_seconds = (SECONDS_PER_DEGREE * num).round
  total_minutes, seconds = total_seconds.divmod(SECONDS_PER_MINUTE)
  degrees, minutes = total_minutes.divmod(MINUTES_PER_DEGREE)
  degrees = degrees % 360
  
  format("#{sign}%d°%.2d\'%.2d\"", degrees, minutes, seconds)
end

p dms(-30) == %(-30°00'00")
p dms(-76.73) == %(-76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p (dms(360) == %(360°00'00") || dms(360) == %(0°00'00"))