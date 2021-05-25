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

def split_float_whole_decimal(float)
  whole_num = float.to_i/1
  decimal_num = float - whole_num
  [whole_num,decimal_num]
end

def dms(float)
  degree, leftover = split_float_whole_decimal(float)
  float = leftover * DEG_TO_MIN
  minutes, leftover = split_float_whole_decimal(float)
  seconds = leftover * MIN_TO_SEC
  [degree,minutes,seconds]
  
end

p dms(30)
p dms(76.73)
p dms(254.6)
p dms(93.034773)


dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")