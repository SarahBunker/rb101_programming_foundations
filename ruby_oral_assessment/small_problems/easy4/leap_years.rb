=begin
#------------------------------------------------------------------------------
PROBLEM:
write a method that takes a value greater then 0 and returns a boolean describing if the year is a leap year.

input: integer
output: boolean
rules:
    Explicit requirements:
      leap years: years divisible by 4
      if year is divisible by 100, then it is only a leap year if it is also divible by 400
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

1. define a method
2. 
3.
4.
5.
6.
7.
8.
9.
10.



=end

def leap_year?(year)
  return year % 4 == 0 if year < 1752
  if year % 400 == 0
    return true
  elsif year % 100 == 0
    return false
  else
    year % 4 == 0
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true