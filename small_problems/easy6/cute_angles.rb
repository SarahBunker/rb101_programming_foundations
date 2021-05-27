=begin
in: float, represents degrees
out: string with degrees, minutes, seconds
rules
  each deg has 60 min
  each min has 60 sec
  degree symbol (°) to represent degrees, a single quote (') to represent minutes,
    and a double quote (") to represent seconds

func split decimal into whole number and decimal part
  convert to integer and divide by one
  subtract whole number from starting number
  return array

get degrees
  this is just the whole part of the number
  convert to integer and divide by one
get minutes
  times the leftover by 60
  the whole part is the minutes
  convert to integer and divide by one
get seconds
  times the leftover by 60
combine into string
return string

might need to use a rounding down method instead of integer division

=end

DEG_TO_MIN = 60
MIN_TO_SEC = 60
DEGREE = "\xC2\xB0"

def split_float_whole_decimal(float)
  whole_num = float.to_i/1
  decimal_num = float - whole_num
  [whole_num,decimal_num]
end

def dms(float)
  degrees, leftover = split_float_whole_decimal(float)
  float = leftover * DEG_TO_MIN
  minutes, leftover = split_float_whole_decimal(float)
  seconds = (leftover * MIN_TO_SEC).round
  if seconds == 60
    minutes += 1
    seconds = 0
  end
  if minutes == 60
    degrees += 1
    minutes = 0
  end
  #[degrees,minutes,seconds]
  "#{sprintf("%02d",degrees)}#{DEGREE}#{sprintf("%02d",minutes)}'#{sprintf("%02d",seconds)}"
end

p dms(30)
p dms(76.73)
p dms(254.6)
p dms(93.034773)

p sprintf("%02d",360.1)

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

=begin
SOLUTION
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

they converted everything to seconds and then used divmod

.divmod ~ divide using the modulus, returns whole number and remainder

I had a hard time with formatting the string.
posted question on slack
https://idiosyncratic-ruby.com/49-what-the-format.html
this website might help

=end