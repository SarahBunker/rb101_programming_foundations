=begin
input: # min before or after midnight (integer)
output: time in 24 hr format  hh:mm (string)
rules
  positive integers represent time after midnight
  negative integers represent time before midnight
  should work with any integer format
  0 returns 00:00
  returns a string
  must keep both digits 02:00
  total minutes in a day 1440, must accept values greater then that and loop
  
  
Algorithym
time = ""

if integer = 0 > 00:00
determine if positive or negative

Negative
loop
  integer = integer + 1440[CONSTANT]
  until integer is positive
end

positive
number, remainder = division
hours, min = integer / 60
days, hh = hours / 24

convert hh and min to strings
if length is 1 first add "0" then add hh
add :
if mm.length is 1 add "0" then add mm

return time
=end
MIN_IN_HOUR = 60
HOURS_IN_DAY = 24
MIN_IN_DAY = MIN_IN_HOUR * HOURS_IN_DAY

def positive_min_to_time(integer)
  hours, mm = integer.divmod(MIN_IN_HOUR)
  hh = hours % HOURS_IN_DAY
  [hh, mm]
end

def time_of_day(integer)
  #return "00:00" if integer == 0
  time = ""
  if integer < 0
    loop do
      integer += MIN_IN_DAY
      break if integer > 0
    end
  end
  hh, mm = positive_min_to_time(integer)
  time << "0" if hh.to_s.length == 1
  time << hh.to_s
  time << ":"
  time << "0" if mm.to_s.length == 1
  time << mm.to_s
end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"