=begin
input: (string) time in HH:MM 24 hr format
output: (integer) time in minutes before/after midnight

after midnight
hh = first two characters turned into digits
mm = last two char turned into digits
convert hh to mm and add to mm
return mm

before midnight
return 1440 - aftermidnight
=end

MIN_IN_HOUR = 60
HOURS_IN_DAY = 24
MIN_IN_DAY = MIN_IN_HOUR * HOURS_IN_DAY

def after_midnight(string)
  hh = string[0..1].to_i
  mm = string[-2..-1].to_i
  minutes = hh*MIN_IN_HOUR + mm
  return 0 if minutes == MIN_IN_DAY
  minutes
end

def before_midnight(string)
  minutes = MIN_IN_DAY - after_midnight(string)
  return 0 if minutes == MIN_IN_DAY
  minutes
end

p after_midnight("01:30")
p after_midnight("00:00")
p ""
p before_midnight("00:00")
  
p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

=begin
SOLUTION
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end
=end
