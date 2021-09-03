=begin
#------------------------------------------------------------------------------
PROBLEM:
 convert degrees as a floating point number into degrees, minutes, and seconds
input: float 
output: string (deg, min, sec)
rules:
    Explicit requirements:
      a degree == 60 minutes
      a second == 60 seconds
      
      use deg symbol
      use ' to represent minutes
      use '' to represent seconds
      use constant for degree symbol
    Implicit requirements:
      show two digits even if less then double digits except the degree spot
      allows 360 to equal 360 or 0 deg
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- define method
- initialize new_string
- find deg, min, sec
- deg is the integer part of the float
- min is the integer part of (times the decimal by 60)
- sec is the integer part of (times the decimal part by 60)
- format results
- return new string
- 

=end

DEG_TO_MIN = 60
MIN_TO_SEC = 60
DEGREE = "\xC2\xB0"

# def dms(degrees)
#   deg, remainder = degrees.divmod(1)
#   minutes = remainder * DEG_TO_MIN 
#   min, remainder = minutes.divmod(1)
#   seconds = remainder * MIN_TO_SEC
#   sec = seconds.round
#   if sec >= MIN_TO_SEC
#     min += 1
#     sec -= MIN_TO_SEC
#   end
#   "#{deg}#{DEGREE}#{sprintf("%02d",min)}'#{sprintf("%02d",sec)}\""
# end


# puts dms(30)         == %(30°00'00")
# puts dms(76.73)      == %(76°43'48")
# puts dms(254.6)      == %(254°36'00")
# puts dms(93.034773)  == %(93°02'05")
# puts dms(0)          == %(0°00'00")
# puts dms(360)        == %(360°00'00") || dms(360) == %(0°00'00")

=begin
#------------------------------------------------------------------------------
PROBLEM:
modify the solution to previous problem so that it returns a number between 0 and 360
must deal with negative inputs and inputs greater then 360

input: 
output: 
rules:
    Explicit requirements:
      
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- if >= 360 deg subtract 360 from degrees until less
- if < 0deg add 360 to degrees until greater then
- 
- 
- 
- 
- 
- 

=end


def dms(degrees)
  deg, remainder = degrees.divmod(1)
  minutes = remainder * DEG_TO_MIN 
  min, remainder = minutes.divmod(1)
  seconds = remainder * MIN_TO_SEC
  sec = seconds.round
  if sec >= MIN_TO_SEC
    min += 1
    sec -= MIN_TO_SEC
  end
  deg -= 360 while deg >= 360
  deg += 360 while deg < 0
  "#{deg}#{DEGREE}#{sprintf("%02d",min)}'#{sprintf("%02d",sec)}\""
end

p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")