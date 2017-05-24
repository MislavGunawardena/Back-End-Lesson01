DEGREE = "\x00\xB0"
SECONDS_PER_MINUTE = 60
MINUTES_PER_DEGREE = 60
SECONDS_PER_DEGREE = SECONDS_PER_MINUTE * MINUTES_PER_DEGREE

def dms(angle)
  total_seconds = (angle * SECONDS_PER_DEGREE).round
  total_minutes, remaining_seconds = total_seconds.divmod(SECONDS_PER_MINUTE)
  degrees, remaining_minutes = total_minutes.divmod(MINUTES_PER_DEGREE)
  "#{degrees}°#{format("%.2d'",remaining_minutes)}"\
  "#{format("%.2d",remaining_seconds)}\""
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")