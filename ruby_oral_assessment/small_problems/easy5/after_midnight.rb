=begin
#------------------------------------------------------------------------------
PROBLEM:
convert integer to time of day in military time
input: integer, positive or negative
output: string representing time
rules:
    Explicit requirements:
      negative time means time before midnight
      time is in minutes
      should work with any integer input (can have time larger then 24*60)
    Implicit requirements:
      zero returns midnight
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

define method
1. divide integer by 24*60 (number of minutes in a day)
    remainder is number of minutes from midnight, without going over a day
2. if negative integer add to 24*60
3. num of hours is the number of times 60 can go whole into number of minutes from midnight
4. num of min is the remainder of the division
5. store num of hours and num of minutes in string
6. return string
7.
8.
9.
10.



=end

MIN_IN_HOUR = 60
HOURS_IN_DAY = 24
MIN_IN_DAY = HOURS_IN_DAY*MIN_IN_HOUR


def time_of_day(integer)
  min_from_mid = integer % MIN_IN_DAY
  min_from_mid += MIN_IN_DAY if min_from_mid < 0
  hours, mins = min_from_mid.divmod( MIN_IN_HOUR )
  hours = "0#{hours}" if hours < 10
  mins = "0#{mins}" if mins < 10
  "#{hours}:#{mins}"
end


p time_of_day(0)      == "00:00"
p time_of_day(-3)     == "23:57"
p time_of_day(35)     == "00:35"
p time_of_day(-1437)  == "00:03"
p time_of_day(3000)   == "02:00"
p time_of_day(800)    == "13:20"
p time_of_day(-4231)  == "01:29"
p time_of_day(1440)   == "00:00"
puts ""
puts "part two"
def after_midnight(string)
  hours, mins = string.split(":").map(&:to_i)
  mins += hours * MIN_IN_HOUR
  mins % MIN_IN_DAY
end

def before_midnight(string)
  hours, mins = string.split(":").map(&:to_i)
  mins += hours * MIN_IN_HOUR
  mins = MIN_IN_DAY - mins unless mins == 0
  mins
end

p after_midnight('00:00')   == 0
p before_midnight('00:00')  == 0
p after_midnight('12:34')   == 754
p before_midnight('12:34')  == 686
p after_midnight('24:00')   == 0
p before_midnight('24:00')  == 0