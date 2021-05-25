=begin
input:year, int
output:boolean
rules
-years devisible by 4 > leap years
  -unless year divisible by 100
    leap year if divisible by 400

Algorithym

year % 100 ?
  year % 400 ? leap year
  not leap year

year % 4 ?
  leap year

=end

def leap_year?(year)
  if year%100 == 0
    return year%400 == 0
  end
  year%4 == 0
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
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
